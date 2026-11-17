-- F8 scenario and its game adapter; not part of the imported SDK.
return function(api)
    local valid, log, debugScreen, getTarget = api.valid, api.log, api.debugScreen, api.getTarget
    local cheats = FindAllOf('FS_Cheats_C') or {}
    local players = FindAllOf('FS_PlayerChar_C') or {}
    if #cheats == 0 or #players == 0 then
        log('F8 two-mob test: missing cheats or player')
        return
    end
    local player = players[1]
    debugScreen('F8 active; preparing +Y skeleton', player)
    local controller = player:GetController()
    if not valid(controller) then
        log('F8 two-mob test: player controller is invalid')
        return
    end
    local firstData = StaticFindObject(
        '/Game/Enemies/Boner_00/Skeletons24/Standard/Boner_Standard_Fighter_Data.Boner_Standard_Fighter_Data'
    )
    local secondData = StaticFindObject('/Game/Enemies/Fisher_00/Fisher24/Fisher_01/Fisher_01_Data.Fisher_01_Data')
    if not valid(firstData) or not valid(secondData) then
        log('F8 two-mob test: could not find both enemy data assets')
        return
    end
    local playerLocation = player:K2_GetActorLocation()
    local function spawnLocation(yDirection)
        return {
            X = playerLocation.X,
            Y = playerLocation.Y + yDirection * 300,
            Z = playerLocation.Z,
        }
    end
    local function snapshotActors()
        local seen = {}
        for _, enemy in ipairs(FindAllOf('EnemyBase_C') or {}) do
            if valid(enemy) then
                seen[enemy:GetAddress()] = true
            end
        end
        return seen
    end
    local spawnedAddresses = snapshotActors()
    local function placeSpawnedEnemy(expectedData, location)
        local chosen
        for _, enemy in ipairs(FindAllOf('EnemyBase_C') or {}) do
            if
                valid(enemy)
                and valid(enemy.Data)
                and enemy.Data:GetAddress() == expectedData:GetAddress()
                and not spawnedAddresses[enemy:GetAddress()]
            then
                local fullName = enemy:GetFullName()
                if fullName:find('PersistentLevel') then
                    chosen = enemy
                    break
                end
                chosen = chosen or enemy
            end
        end
        if not valid(chosen) then
            log('spawn placement failed: actor not found for ' .. expectedData:GetFullName())
            return
        end
        chosen:K2_SetActorLocation(location, false, {}, true)
        spawnedAddresses[chosen:GetAddress()] = true
        log('spawn placement actor=' .. chosen:GetFullName())
        return chosen
    end
    local function aimAtEnemy(enemy)
        if not valid(enemy) or not valid(controller.PlayerCameraManager) then
            log('aim setup failed: enemy or camera invalid')
            return false
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
        return true
    end
    local function wait(milliseconds)
        coroutine.yield(milliseconds)
    end
    local gui = { lens = {} }
    function gui.lens.waitFor(enemy, stage)
        for _ = 1, 26 do
            if not valid(enemy) then
                error(stage .. ': spawned actor invalid')
            end
            local target = getTarget()
            if valid(target) and target:GetAddress() == enemy:GetAddress() then
                debugScreen(stage .. ' hover=PASS', player)
                wait(3000)
                return true
            end
            wait(200)
        end
        local target = getTarget()
        debugScreen(stage .. ' hover=FAIL target=' .. tostring(target and target:GetFullName() or 'none'), player)
        return false
    end
    local function report(stage, expectedData)
        local found = false
        for _, enemy in ipairs(FindAllOf('EnemyBase_C') or {}) do
            if valid(enemy) and valid(enemy.Data) and enemy.Data:GetAddress() == expectedData:GetAddress() then
                found = true
                log(stage .. ' spawned actor=' .. enemy:GetFullName() .. ' data=' .. enemy.Data:GetFullName())
            end
        end
        if not found then
            log(stage .. ' spawned actor not found in EnemyBase_C scan')
        end
        log(stage .. ' aim/card target=' .. tostring(getTarget() and getTarget():GetFullName() or 'none'))
    end
    local world = {}
    function world.spawnMonster(data, direction)
        spawnedAddresses = snapshotActors()
        cheats[1]:SpawnEnemyFromData(data, true, false)
        wait(500)
        local enemy = placeSpawnedEnemy(data, spawnLocation(direction))
        assert(valid(enemy), 'spawned actor not found')
        return enemy
    end
    local camera = {}
    function camera.lookAt(enemy)
        assert(aimAtEnemy(enemy), 'cannot aim at enemy')
    end
    function camera.turnAround()
        local rotation = controller:GetControlRotation()
        rotation.Yaw = rotation.Yaw + 180
        controller:SetControlRotation(rotation)
    end
    local function scenario()
        debugScreen('spawning skeleton at Y+300; facing +Y', player)
        local skeleton = world.spawnMonster(firstData, 1)
        camera.lookAt(skeleton)
        wait(300)
        report('stage 1', firstData)
        gui.lens.waitFor(skeleton, 'stage 1')

        camera.turnAround()
        debugScreen('spawning Fisher at Y-300', player)
        local fish = world.spawnMonster(secondData, -1)
        camera.lookAt(fish)
        wait(300)
        report('stage 2', secondData)
        gui.lens.waitFor(fish, 'stage 2')
        log('F8 two-mob test complete')
    end
    local task = coroutine.create(scenario)
    local function resume()
        local ok, delay = coroutine.resume(task)
        if not ok then
            log('F8 two-mob test failed: ' .. tostring(delay))
        elseif coroutine.status(task) ~= 'dead' then
            ExecuteInGameThreadWithDelay(delay, resume)
        end
    end
    resume()
end
