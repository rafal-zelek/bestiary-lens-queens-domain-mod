do
    local runScenario = require('smoke.test')
    local Enemies = require('sdk.domain.enemies')
    local Position = require('sdk.domain.position')

    local origin = Position.new(10, 20, 30)
    local calls = {}
    local function record(value)
        calls[#calls + 1] = value
    end

    runScenario({
        world = {
            spawnMonster = function(kind, position)
                assert(position.x == 10 and position.z == 30)
                assert(position.y == (kind == Enemies.Boner_Standard_Fighter and 320 or -280))
                record('spawn ' .. kind)
                return { kind = kind }
            end,
        },
        player = {
            position = function()
                record('position')
                return origin
            end,
            lookAt = function(monster)
                record('aim ' .. monster.kind)
            end,
            turnAround = function()
                record('turn around')
            end,
        },
        gui = {
            lens = {
                observe = function(monster, holdMs)
                    record('hover ' .. monster.kind)
                    record(holdMs)
                end,
            },
        },
        wait = function(milliseconds)
            record(milliseconds)
        end,
    })

    local expected = {
        'position',
        'spawn Boner_Standard_Fighter',
        'aim Boner_Standard_Fighter',
        300,
        'hover Boner_Standard_Fighter',
        3000,
        'turn around',
        'spawn Fisher_01',
        'aim Fisher_01',
        300,
        'hover Fisher_01',
        3000,
    }
    assert(#calls == #expected)
    for index, value in ipairs(expected) do
        assert(calls[index] == value, 'unexpected smoke test step ' .. index)
    end
    assert(origin.x == 10 and origin.y == 20 and origin.z == 30)
    print('Smoke scenario composition passed')
end

do
    local scheduled = {}
    local onKey
    local events = {}
    local spawnId = 0

    local function record(event)
        assert(select(2, coroutine.running()), 'native operation must use the main Lua state')
        events[#events + 1] = event
    end

    package.loaded['sdk.engine.bestiary_runtime'] = {
        bindSmokeTest = function(_, callback)
            onKey = callback
        end,
        schedule = function(_, callback)
            assert(select(2, coroutine.running()), 'UE4SS scheduling must use the main Lua state')
            scheduled[#scheduled + 1] = callback
        end,
        open = function()
            record('open')
            return {
                playerPosition = function()
                    return 10, 20, 30
                end,
                beginSpawn = function(enemy)
                    record('spawn ' .. enemy)
                    return enemy
                end,
                placeSpawnedMonster = function(enemy, position)
                    record('place ' .. enemy .. ' ' .. position.y)
                    spawnId = spawnId + 1
                    return spawnId
                end,
                lookAt = function(id)
                    record('aim ' .. id)
                end,
                turnAround = function()
                    record('turn')
                end,
                isLensTarget = function(id)
                    return id == 1
                end,
                lensTargetName = function()
                    return 'none'
                end,
                showMessage = function(message)
                    record(message)
                end,
            }
        end,
    }

    require('sdk.domain.smoke').bind({
        log = record,
        marker = 'TEST',
        readLensTarget = function() end,
    }, 'F8', require('smoke.test'))
    onKey()
    onKey()
    local callbacks = 0
    while #scheduled > 0 do
        callbacks = callbacks + 1
        assert(callbacks < 40, 'callback queue failed to terminate')
        table.remove(scheduled, 1)()
    end
    assert(table.concat(events, '\n') == table.concat({
        'TEST smoke handler ready',
        'TEST smoke test started',
        'open',
        'spawning Boner_Standard_Fighter',
        'spawn Boner_Standard_Fighter',
        'place Boner_Standard_Fighter 320',
        'aim 1',
        'Boner_Standard_Fighter hover=PASS',
        'turn',
        'spawning Fisher_01',
        'spawn Fisher_01',
        'place Fisher_01 -280',
        'aim 2',
        'Fisher_01 hover=FAIL target=none',
        'Smoke test complete',
    }, '\n'))
    print('Smoke callbacks use the main Lua state and complete in order')
end
