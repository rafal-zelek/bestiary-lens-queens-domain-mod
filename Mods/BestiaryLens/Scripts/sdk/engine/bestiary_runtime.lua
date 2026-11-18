local Enemies = require('sdk.domain.enemies')
local Input = require('sdk.engine.input')
local DebugHud = require('sdk.engine.debug_hud')

---@type table<BL.EnemyKind, string>
local FIND_ENEMY_DATA = {
    [Enemies.Boner_Standard_Fighter] = '/Game/Enemies/Boner_00/Skeletons24/Standard/Boner_Standard_Fighter_Data.Boner_Standard_Fighter_Data',
    [Enemies.Fisher_01] = '/Game/Enemies/Fisher_00/Fisher24/Fisher_01/Fisher_01_Data.Fisher_01_Data',
}
local ENEMY_CLASS = 'EnemyBase_C'
local CHEAT_CLASS = 'FS_Cheats_C'
local PLAYER_CLASS = 'FS_PlayerChar_C'
local HALF_TURN_DEGREES = 180
local SPAWN_INACTIVE, SPAWN_IN_BETA_FOG = true, false
local SWEEP_PLACEMENT, TELEPORT_PLACEMENT = false, true

---@class (exact) BL.EngineBinding
---@field log fun(message: string)
---@field marker string
---@field readLensTarget fun(): BL.LensTarget?

---@class (exact) BL.PendingSpawn
---@field dataAddress integer
---@field seen table<integer, boolean>

---@param object UObject?
---@return boolean
local function valid(object)
    if object == nil then
        return false
    end
    local ok, result = pcall(function()
        return object:IsValid()
    end)
    return ok and result == true
end

---@return AEnemyBase_C[]
local function findEnemies()
    local enemies = FindAllOf(ENEMY_CLASS) or {}
    ---@cast enemies AEnemyBase_C[]
    return enemies
end

---@return table<integer, boolean>
local function snapshotActors()
    local seen = {}
    for _, actor in ipairs(findEnemies()) do
        if valid(actor) then
            seen[actor:GetAddress()] = true
        end
    end
    return seen
end

local Engine = {}

Engine.bindSmokeTest = Input.bind

---@param milliseconds integer
---@param callback fun()
function Engine.schedule(milliseconds, callback)
    ExecuteInGameThreadWithDelay(milliseconds, callback)
end

---@param options BL.EngineBinding
function Engine.open(options)
    local cheats = (FindAllOf(CHEAT_CLASS) or {})[1] --[[@as UFS_Cheats_C]]
    local pawn = (FindAllOf(PLAYER_CLASS) or {})[1] --[[@as AFS_PlayerChar_C]]
    assert(valid(cheats) and valid(pawn), 'missing cheats or player')
    local controller = pawn:GetController() --[[@as APlayerController]]
    assert(valid(controller), 'player controller is invalid')

    local log = options.log
    local runtime = {}
    ---@type table<integer, AEnemyBase_C>
    local spawnedActors = {}

    ---@return number x, number y, number z
    function runtime.playerPosition()
        local position = pawn:K2_GetActorLocation() --[[@as FVector]]
        return position.X, position.Y, position.Z
    end

    ---@param enemy BL.EnemyKind
    ---@return BL.PendingSpawn
    function runtime.beginSpawn(enemy)
        local path = assert(FIND_ENEMY_DATA[enemy], 'unknown enemy: ' .. tostring(enemy))
        local data = StaticFindObject(path) --[[@as UEnemyData_C]]
        assert(valid(data), 'enemy data asset unavailable: ' .. enemy)
        local seen = snapshotActors()
        -- The native cheat spawns at the crosshair; the new actor is then moved to the requested position.
        cheats:SpawnEnemyFromData(data, SPAWN_INACTIVE, SPAWN_IN_BETA_FOG)
        return { dataAddress = data:GetAddress(), seen = seen }
    end

    ---@param spawn BL.PendingSpawn
    ---@param position BL.Position
    ---@return integer
    function runtime.placeSpawnedMonster(spawn, position)
        local chosen
        for _, actor in ipairs(findEnemies()) do
            if
                valid(actor)
                and not spawn.seen[actor:GetAddress()]
                and valid(actor.Data)
                and actor.Data:GetAddress() == spawn.dataAddress
            then
                if actor:GetFullName():find('PersistentLevel', 1, true) then
                    chosen = actor
                    break
                end
                chosen = chosen or actor
            end
        end
        assert(chosen, 'spawned actor not found')
        ---@type FVector
        local destination = { X = position.x, Y = position.y, Z = position.z }
        -- UE4SS accepts an initially empty table for the output parameter.
        local sweepHit = {}
        ---@cast sweepHit FHitResult
        chosen:K2_SetActorLocation(destination, SWEEP_PLACEMENT, sweepHit, TELEPORT_PLACEMENT)
        log('spawn placement actor=' .. chosen:GetFullName())
        local address = chosen:GetAddress()
        spawnedActors[address] = chosen
        return address
    end

    function runtime.turnAround()
        local rotation = controller:GetControlRotation() --[[@as FRotator]]
        rotation.Yaw = rotation.Yaw + HALF_TURN_DEGREES
        controller:SetControlRotation(rotation)
    end

    ---@param address integer
    ---@return boolean
    function runtime.isLensTarget(address)
        assert(valid(spawnedActors[address]), 'spawned actor is invalid')
        local target = options.readLensTarget() --[[@as BL.NativeLensTarget?]]
        return target ~= nil and valid(target.actor) and address == target.actor:GetAddress()
    end

    ---@return string
    function runtime.lensTargetName()
        local target = options.readLensTarget() --[[@as BL.NativeLensTarget?]]
        return target ~= nil and valid(target.actor) and target.actor:GetFullName() or 'none'
    end

    ---@param address integer
    function runtime.lookAt(address)
        local enemy = spawnedActors[address]
        if not valid(enemy) or not valid(controller.PlayerCameraManager) then
            error('aim setup failed: enemy or camera invalid')
        end
        local camera = controller.PlayerCameraManager:GetCameraLocation() --[[@as FVector]]
        local target = enemy:K2_GetActorLocation() --[[@as FVector]]
        if valid(enemy.Mesh) then
            local ok, center = pcall(function()
                local c, extent, radius = {}, {}, {}
                local ksl = StaticFindObject('/Script/Engine.Default__KismetSystemLibrary') --[[@as UKismetSystemLibrary]]
                ---@diagnostic disable-next-line: param-type-mismatch
                ksl:GetComponentBounds(enemy.Mesh, c, extent, radius)
                ---@cast c FVector
                return c
            end)
            if ok and center.X then
                target = center
            end
        end
        local dx, dy, dz = target.X - camera.X, target.Y - camera.Y, target.Z - camera.Z
        local rotation = controller:GetControlRotation() --[[@as FRotator]]
        rotation.Yaw = math.deg(math.atan(dy, dx))
        rotation.Pitch = math.deg(math.atan(dz, math.sqrt(dx * dx + dy * dy)))
        controller:SetControlRotation(rotation)
        log('aim set actor=' .. enemy:GetFullName() .. ' yaw=' .. tostring(rotation.Yaw))
    end

    local showOnHud = DebugHud.new(pawn, options.marker)
    local reportedHudError = false
    ---@param message string
    function runtime.showMessage(message)
        log(options.marker .. ' ' .. message)
        local ok, errorMessage = pcall(showOnHud, message)
        if not ok and not reportedHudError then
            reportedHudError = true
            log('smoke HUD failed: ' .. tostring(errorMessage))
        end
    end
    return runtime
end

return Engine
