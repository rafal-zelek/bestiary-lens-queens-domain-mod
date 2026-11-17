do
    local Lens = require('sdk.domain.lens')
    local Config = require('config')
    local View = require('card_view')
    local first, second = { id = 'first' }, { id = 'second' }
    local aimed, selected = first, nil
    local active, visible = true, false
    local rendered

    local lens = Lens.new({
        ensureCard = function()
            return true
        end,
        isGameplayActive = function()
            return active
        end,
        selectTarget = function()
            return aimed
        end,
        isLive = function()
            return true
        end,
        setTarget = function(target)
            selected = target
        end,
        readTarget = function(target)
            assert(target == selected, 'entry read must use the explicitly selected target')
            return { known = false }
        end,
        render = function(model)
            visible, rendered = true, model
        end,
        hide = function()
            visible = false
        end,
    }, Config, function() end)

    lens.update(0.1)
    assert(selected == first and visible and not rendered.known, 'initial aim shows the locked card')
    aimed = second
    lens.update(0.1)
    assert(selected == first, 'keep displaying the first target during acquisition')
    lens.update(0.1)
    lens.update(0.1)
    assert(selected == second and visible, 'switch after the acquisition delay')
    active = false
    lens.update(0.1)
    assert(selected == nil and not visible, 'modal clears the target and hides the card')
    active = true
    lens.toggle()
    lens.update(0.1)
    assert(not visible, 'disabled lens remains hidden')

    assert(View.statValue(0) == '0' and View.statValue(nil) == '?')
    assert(View.dropRate({ coins = 3, chance = 0.1 }) == '×3 10%')
    assert(View.dropRate({ chance = 0.125 }) == '12.5%')
    assert(View.dropRate({}) == '?')
    print('lens orchestration and presentation checks passed')
end
