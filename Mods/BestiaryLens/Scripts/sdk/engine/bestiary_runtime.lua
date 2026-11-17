local Enemies = require('sdk.domain.enemies')

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

local function valid(object)
    if object == nil then
        return false
    end
    local ok, result = pcall(function()
        return object:IsValid()
    end)
    return ok and result == true
end

local function snapshotActors()
    local seen = {}
    for _, actor in ipairs(FindAllOf(ENEMY_CLASS) or {}) do
        if valid(actor) then
            seen[actor:GetAddress()] = true
        end
    end
    return seen
end

local Engine = {}

function Engine.bindSmokeTest(callback)
    RegisterKeyBind(Key.F8, function()
        ExecuteInGameThread(callback)
    end)
end

function Engine.schedule(milliseconds, callback)
    ExecuteInGameThreadWithDelay(milliseconds, callback)
end

function Engine.open(options)
    local cheats = (FindAllOf(CHEAT_CLASS) or {})[1]
    local pawn = (FindAllOf(PLAYER_CLASS) or {})[1]
    assert(valid(cheats) and valid(pawn), 'missing cheats or player')
    local controller = pawn:GetController()
    assert(valid(controller), 'player controller is invalid')

    local log = options.log
    local runtime = {}

    function runtime.playerPosition()
        local position = pawn:K2_GetActorLocation()
        return position.X, position.Y, position.Z
    end

    function runtime.beginSpawn(enemy)
        local path = assert(FIND_ENEMY_DATA[enemy], 'unknown enemy: ' .. tostring(enemy))
        local data = StaticFindObject(path)
        assert(valid(data), 'enemy data asset unavailable: ' .. enemy)
        local seen = snapshotActors()
        -- The native cheat spawns at the crosshair; the new actor is then moved to the requested position.
        cheats:SpawnEnemyFromData(data, SPAWN_INACTIVE, SPAWN_IN_BETA_FOG)
        return { dataAddress = data:GetAddress(), seen = seen }
    end

    function runtime.placeSpawnedMonster(spawn, position)
        local chosen
        for _, actor in ipairs(FindAllOf(ENEMY_CLASS) or {}) do
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
        local destination = { X = position.x, Y = position.y, Z = position.z }
        local sweepHit = {}
        chosen:K2_SetActorLocation(destination, SWEEP_PLACEMENT, sweepHit, TELEPORT_PLACEMENT)
        log('spawn placement actor=' .. chosen:GetFullName())
        return chosen
    end

    function runtime.turnAround()
        local rotation = controller:GetControlRotation()
        rotation.Yaw = rotation.Yaw + HALF_TURN_DEGREES
        controller:SetControlRotation(rotation)
    end

    function runtime.isLensTarget(actor)
        assert(valid(actor), 'spawned actor is invalid')
        local target = options.readLensTarget()
        return valid(target) and actor:GetAddress() == target:GetAddress()
    end

    function runtime.lensTargetName()
        local target = options.readLensTarget()
        return valid(target) and target:GetFullName() or 'none'
    end

    function runtime.lookAt(enemy)
        if not valid(enemy) or not valid(controller.PlayerCameraManager) then
            error('aim setup failed: enemy or camera invalid')
        end
        local camera = controller.PlayerCameraManager:GetCameraLocation()
        local target = enemy:K2_GetActorLocation()
        if valid(enemy.Mesh) then
            local ok, center = pcall(function()
                local c, extent, radius = {}, {}, {}
                local ksl = StaticFindObject('/Script/Engine.Default__KismetSystemLibrary') --[[@as UKismetSystemLibrary]]
                ---@diagnostic disable-next-line: param-type-mismatch
                ksl:GetComponentBounds(enemy.Mesh, c, extent, radius)
                return c
            end)
            if ok and center.X then
                target = center
            end
        end
        local dx, dy, dz = target.X - camera.X, target.Y - camera.Y, target.Z - camera.Z
        local rotation = controller:GetControlRotation()
        rotation.Yaw = math.deg(math.atan(dy, dx))
        rotation.Pitch = math.deg(math.atan(dz, math.sqrt(dx * dx + dy * dy)))
        controller:SetControlRotation(rotation)
        log('aim set actor=' .. enemy:GetFullName() .. ' yaw=' .. tostring(rotation.Yaw))
    end

    function runtime.showMessage(message)
        log(options.marker .. ' ' .. message)
        local ok, err = pcall(function()
            local helpers = StaticFindObject('/Script/FB_Utils.Default__FB_BPHelpers') --[[@as UFB_BPHelpers]]
            if helpers and helpers:IsValid() then
                helpers:FB_PrintString(
                    pawn,
                    options.marker .. ' ' .. message,
                    true,
                    true,
                    true,
                    { R = 1, G = 0.75, B = 0.1, A = 1 },
                    8
                )
            else
                error('FB_BPHelpers default object unavailable')
            end
        end)
        if not ok then
            log('screen message failed: ' .. tostring(err))
        end
    end
    return runtime
end

return Engine
