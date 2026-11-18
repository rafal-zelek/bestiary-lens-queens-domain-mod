local Menu = require('sdk.domain.runtime_menu')

local fixture = { profile = 'test-profile', save = 'dedicated-fixture', readiness = 'playable' }

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

local exact = { index = 2, save = 'dedicated-fixture', kind = 'regular' }
local files = {
    screen = 'file-select',
    profile = 'test-profile',
    interactive = true,
    slots = { { index = 0, kind = 'empty' }, exact },
}
assert(expect(files, 'choose-file').index == 2)
files.interactive = false
expect(files, 'wait', 'menu-not-interactive')
files.interactive = true
files.slots = { exact, { index = 2, kind = 'empty' } }
expect(files, 'stop', 'ambiguous-slot')
files.slots = { exact, { index = 3, save = 'dedicated-fixture', kind = 'regular' } }
expect(files, 'stop', 'ambiguous-slot')
for _, kind in ipairs({ 'empty', 'backup', 'suspend' }) do
    files.slots = { { index = 2, save = 'dedicated-fixture', kind = kind } }
    expect(files, 'stop', 'unsafe-slot')
end
files.slots = {}
expect(files, 'stop', 'missing-slot')

local gameplay = { screen = 'gameplay', profile = 'test-profile', loadedSave = 'dedicated-fixture', playable = true }
expect(gameplay, 'ready')
gameplay.playable = false
expect(gameplay, 'wait', 'gameplay-not-ready')
gameplay.loadedSave = 'unrelated'
expect(gameplay, 'stop', 'save-mismatch')
gameplay.loadedSave = nil
expect(gameplay, 'stop', 'save-mismatch')

print('Runtime menu decisions passed')
