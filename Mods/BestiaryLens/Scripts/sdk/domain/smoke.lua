local Engine = require('sdk.engine.bestiary_runtime')
local Position = require('sdk.domain.position')

local SPAWN_SETTLE_MS = 500
local LENS_POLL_MS = 200
local LENS_TIMEOUT_MS = 5000

---@class (exact) BL.Monster
---@field kind BL.EnemyKind

---@class (exact) BL.World
---@field spawnMonster fun(enemy: BL.EnemyKind, position: BL.Position): BL.Monster

---@class (exact) BL.Player
---@field position fun(): BL.Position
---@field lookAt fun(monster: BL.Monster)
---@field turnAround fun()

---@class (exact) BL.Lens
---@field observe fun(monster: BL.Monster, holdMs: integer)

---@class (exact) BL.Gui
---@field lens BL.Lens

---@alias BL.Wait fun(milliseconds: integer)

---@class (exact) BL.ScenarioContext
---@field world BL.World
---@field player BL.Player
---@field gui BL.Gui
---@field wait BL.Wait

---@alias BL.Scenario fun(context: BL.ScenarioContext)

---@alias BL.SmokeStep fun(done: fun())

local Smoke = {}

---@param options BL.EngineBinding
---@param keyName BL.KeyName
---@param scenario BL.Scenario
function Smoke.bind(options, keyName, scenario)
    local running = false
    Engine.bindSmokeTest(keyName, function()
        if running then
            return
        end
        running = true
        options.log(options.marker .. ' smoke test started')

        ---@param callback fun()
        local function guard(callback)
            local ok, errorMessage = pcall(callback)
            if not ok then
                running = false
                options.log('Smoke test failed: ' .. tostring(errorMessage))
            end
        end

        ---@param milliseconds integer
        ---@param callback fun()
        local function after(milliseconds, callback)
            Engine.schedule(milliseconds, function()
                guard(callback)
            end)
        end

        guard(function()
            local runtime = Engine.open(options)
            ---@type table<BL.Monster, integer>
            local actors = {}
            ---@type BL.SmokeStep[]
            local steps = {}

            ---@param step BL.SmokeStep
            local function enqueue(step)
                steps[#steps + 1] = step
            end

            ---@param milliseconds integer
            local function wait(milliseconds)
                enqueue(function(done)
                    after(milliseconds, done)
                end)
            end

            ---@param enemy BL.EnemyKind
            ---@param position BL.Position
            ---@return BL.Monster
            local function spawnMonster(enemy, position)
                ---@type BL.Monster
                local monster = { kind = enemy }
                enqueue(function(done)
                    runtime.showMessage('spawning ' .. enemy)
                    local spawn = runtime.beginSpawn(enemy)
                    after(SPAWN_SETTLE_MS, function()
                        actors[monster] = runtime.placeSpawnedMonster(spawn, position)
                        done()
                    end)
                end)
                return monster
            end

            ---@return BL.Position
            local function playerPosition()
                return Position.new(runtime.playerPosition())
            end

            ---@param monster BL.Monster
            local function lookAt(monster)
                enqueue(function(done)
                    runtime.lookAt(actors[monster])
                    done()
                end)
            end

            local function turnAround()
                enqueue(function(done)
                    runtime.turnAround()
                    done()
                end)
            end

            ---@param monster BL.Monster
            ---@param holdMs integer
            local function observe(monster, holdMs)
                enqueue(function(done)
                    local elapsed = 0
                    local function poll()
                        if runtime.isLensTarget(actors[monster]) then
                            runtime.showMessage(monster.kind .. ' hover=PASS')
                            after(holdMs, done)
                        elseif elapsed >= LENS_TIMEOUT_MS then
                            runtime.showMessage(monster.kind .. ' hover=FAIL target=' .. runtime.lensTargetName())
                            done()
                        else
                            elapsed = elapsed + LENS_POLL_MS
                            after(LENS_POLL_MS, poll)
                        end
                    end
                    poll()
                end)
            end

            -- The scenario queues operations in order. Native calls run only in UE4SS callbacks.
            scenario({
                world = { spawnMonster = spawnMonster },
                player = { position = playerPosition, lookAt = lookAt, turnAround = turnAround },
                gui = { lens = { observe = observe } },
                wait = wait,
            })

            local index = 0
            local function advance()
                index = index + 1
                local step = steps[index]
                if step then
                    step(advance)
                else
                    running = false
                    options.log('Smoke test complete')
                end
            end
            advance()
        end)
    end)
    options.log(options.marker .. ' smoke handler ready')
end

return Smoke
