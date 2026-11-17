local Engine = require('sdk.engine.bestiary_runtime')
local Position = require('sdk.domain.position')

local SPAWN_SETTLE_MS = 500
local LENS_POLL_MS = 200
local LENS_TIMEOUT_MS = 5000

local Game = {}

function Game.bindSmokeTest(options, scenario)
    Engine.bindSmokeTest(function()
        options.log(options.marker .. ' F8 handler active')
        local task = coroutine.create(function()
            local runtime = Engine.open(options)
            local world, player, gui = {}, {}, { lens = {} }
            local actors = {}

            local function wait(milliseconds)
                coroutine.yield(milliseconds)
            end

            function world.spawnMonster(enemy, position)
                gui.message('spawning ' .. enemy)
                local spawn = runtime.beginSpawn(enemy)
                wait(SPAWN_SETTLE_MS)
                local monster = { kind = enemy }
                actors[monster] = runtime.placeSpawnedMonster(spawn, position)
                return monster
            end

            function player.position()
                return Position.new(runtime.playerPosition())
            end

            function player.lookAt(monster)
                runtime.lookAt(actors[monster])
            end

            player.turnAround = runtime.turnAround
            gui.message = runtime.showMessage

            function gui.lens.waitFor(monster)
                for elapsed = 0, LENS_TIMEOUT_MS, LENS_POLL_MS do
                    if runtime.isLensTarget(actors[monster]) then
                        gui.message(monster.kind .. ' hover=PASS')
                        return true
                    end
                    if elapsed < LENS_TIMEOUT_MS then
                        wait(LENS_POLL_MS)
                    end
                end
                gui.message(monster.kind .. ' hover=FAIL target=' .. runtime.lensTargetName())
                return false
            end

            scenario({ world = world, player = player, gui = gui, wait = wait })
            options.log('F8 two-mob test complete')
        end)

        local function resume()
            local ok, delay = coroutine.resume(task)
            if not ok then
                options.log('F8 two-mob test failed: ' .. tostring(delay))
            elseif coroutine.status(task) ~= 'dead' then
                Engine.schedule(delay, resume)
            end
        end
        resume()
    end)
end

return Game
