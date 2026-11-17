local Engine = require('sdk.engine.bestiary_runtime')
local LensRuntime = require('sdk.engine.lens_runtime')
local Lens = require('sdk.domain.lens')
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
---@field waitFor fun(monster: BL.Monster): boolean

---@class (exact) BL.Gui
---@field lens BL.Lens

---@alias BL.Wait fun(milliseconds: integer)

---@class (exact) BL.ScenarioContext
---@field world BL.World
---@field player BL.Player
---@field gui BL.Gui
---@field wait BL.Wait

---@alias BL.Scenario fun(context: BL.ScenarioContext)

local Game = {}

---@param options BL.EngineBinding
---@param scenario BL.Scenario
function Game.bindSmokeTest(options, scenario)
    Engine.bindSmokeTest(function()
        options.log(options.marker .. ' F8 handler active')
        local task = coroutine.create(function()
            local runtime = Engine.open(options)
            ---@type table<BL.Monster, integer>
            local actors = {}

            ---@param milliseconds integer
            local function wait(milliseconds)
                coroutine.yield(milliseconds)
            end

            ---@param enemy BL.EnemyKind
            ---@param position BL.Position
            ---@return BL.Monster
            local function spawnMonster(enemy, position)
                runtime.showMessage('spawning ' .. enemy)
                local spawn = runtime.beginSpawn(enemy)
                wait(SPAWN_SETTLE_MS)
                ---@type BL.Monster
                local monster = { kind = enemy }
                actors[monster] = runtime.placeSpawnedMonster(spawn, position)
                return monster
            end

            ---@return BL.Position
            local function playerPosition()
                return Position.new(runtime.playerPosition())
            end

            ---@param monster BL.Monster
            local function lookAt(monster)
                runtime.lookAt(actors[monster])
            end

            ---@param monster BL.Monster
            ---@return boolean
            local function waitForLens(monster)
                for elapsed = 0, LENS_TIMEOUT_MS, LENS_POLL_MS do
                    if runtime.isLensTarget(actors[monster]) then
                        runtime.showMessage(monster.kind .. ' hover=PASS')
                        return true
                    end
                    if elapsed < LENS_TIMEOUT_MS then
                        wait(LENS_POLL_MS)
                    end
                end
                runtime.showMessage(monster.kind .. ' hover=FAIL target=' .. runtime.lensTargetName())
                return false
            end

            scenario({
                world = { spawnMonster = spawnMonster },
                player = { position = playerPosition, lookAt = lookAt, turnAround = runtime.turnAround },
                gui = { lens = { waitFor = waitForLens } },
                wait = wait,
            })
            options.log('F8 two-mob test complete')
        end)

        local function resume()
            local ok, delay = coroutine.resume(task)
            if not ok then
                options.log('F8 two-mob test failed: ' .. tostring(delay))
            elseif coroutine.status(task) ~= 'dead' then
                ---@cast delay integer
                Engine.schedule(delay, resume)
            end
        end
        resume()
    end)
end

---@param config BL.LensConfig
---@param log fun(message: string)
---@param marker string
---@param smokeTest BL.Scenario
function Game.startLens(config, log, marker, smokeTest)
    local runtime = LensRuntime.new(config, log)
    local lens = Lens.new(runtime, config, log)
    runtime.start(lens.update, lens.toggle)
    Game.bindSmokeTest({ log = log, marker = marker, readLensTarget = runtime.readLensTarget }, smokeTest)
end

return Game
