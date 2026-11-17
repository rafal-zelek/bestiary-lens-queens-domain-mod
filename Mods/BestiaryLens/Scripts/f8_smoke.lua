local Enemies = require('sdk.domain.enemies')
local Direction = require('sdk.domain.direction')

local SPAWN_DISTANCE = 300
local AIM_SETTLE_MS = 300
local OBSERVATION_MS = 3000

---@param player BL.Player
---@param lens BL.Lens
---@param wait BL.Wait
---@param monster BL.Monster
local function inspect(player, lens, wait, monster)
    player.lookAt(monster)
    wait(AIM_SETTLE_MS)
    if lens.waitFor(monster) then
        wait(OBSERVATION_MS)
    end
end

---@param game BL.ScenarioContext
local function run(game)
    local world, player, lens, wait = game.world, game.player, game.gui.lens, game.wait
    local origin = player.position()

    local skeleton = world.spawnMonster(Enemies.Boner_Standard_Fighter, origin:moveBy(SPAWN_DISTANCE, Direction.EAST))
    inspect(player, lens, wait, skeleton)

    player.turnAround()
    local fish = world.spawnMonster(Enemies.Fisher_01, origin:moveBy(SPAWN_DISTANCE, Direction.WEST))
    inspect(player, lens, wait, fish)
end

return run
