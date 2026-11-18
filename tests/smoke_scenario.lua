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
                waitFor = function(monster)
                    record('hover ' .. monster.kind)
                    return monster.kind == Enemies.Boner_Standard_Fighter
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
    }
    assert(#calls == #expected)
    for index, value in ipairs(expected) do
        assert(calls[index] == value, 'unexpected smoke test step ' .. index)
    end
    assert(origin.x == 10 and origin.y == 20 and origin.z == 30)
    print('Smoke scenario composition passed')
end
