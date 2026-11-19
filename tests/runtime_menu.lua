local Menu = require('sdk.domain.runtime_menu')

local fixture = { profile = 'test-profile', savePath = 'World1.sav', readiness = 'playable' }

local function expect(observation, kind, reason)
    local result = Menu.decide(fixture, observation)
    assert(result.kind == kind, 'expected ' .. kind .. ', got ' .. result.kind)
    assert(result.reason == reason, 'unexpected reason: ' .. tostring(result.reason))
    return result
end

expect({ screen = 'main-menu', profile = 'test-profile', interactive = true }, 'open-file-select')
expect({ screen = 'main-menu', profile = 'test-profile' }, 'wait', 'menu-not-interactive')
expect({ screen = 'main-menu', profile = 'other', interactive = true }, 'stop', 'profile-mismatch')
expect({ screen = 'main-menu', interactive = true }, 'stop', 'profile-mismatch')
expect({ screen = 'modal', profile = 'test-profile' }, 'stop', 'unexpected-screen')
expect({ screen = 'loading', profile = 'test-profile' }, 'wait', 'loading')

local world1 = { index = 1, path = 'World1.sav', kind = 'regular' }
local files = {
    screen = 'file-select',
    profile = 'test-profile',
    interactive = true,
    slots = { { index = 0, path = 'World0.sav', kind = 'regular' }, world1 },
}
assert(expect(files, 'choose-file').index == 1)
files.slots = { world1, { index = 1, path = 'World0.sav', kind = 'regular' } }
expect(files, 'stop', 'ambiguous-slot')
files.slots = { world1, { index = 2, path = 'World0.sav', kind = 'regular' } }
assert(expect(files, 'choose-file').index == 1) -- duplicate/content equality elsewhere is irrelevant
for _, kind in ipairs({ 'backup', 'suspend' }) do
    files.slots = { { index = 1, path = 'World1.sav', kind = kind } }
    expect(files, 'stop', 'unsafe-slot')
end
files.slots = { { index = 1, kind = 'unknown' } }
assert(expect(files, 'choose-file').index == 1) -- no content metadata required
files.slots = { { index = 0, path = 'World0.sav', kind = 'regular' } }
expect(files, 'stop', 'missing-slot')

local gameplay = { screen = 'gameplay', profile = 'test-profile', activeSlotIndex = 1, playable = true }
expect(gameplay, 'ready')
gameplay.playable = false
expect(gameplay, 'wait', 'gameplay-not-ready')
gameplay.playable = true
gameplay.activeSlotIndex = 0
expect(gameplay, 'stop', 'wrong-slot-index')
gameplay.activeSlotIndex = nil
expect(gameplay, 'stop', 'wrong-slot-index')

print('Runtime menu decisions passed')
