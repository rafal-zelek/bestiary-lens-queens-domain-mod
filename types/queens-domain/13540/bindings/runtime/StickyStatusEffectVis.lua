---@meta

---@class UStickyStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field Sound UAudioComponent
local UStickyStatusEffectVis_C = {}

function UStickyStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UStickyStatusEffectVis_C:ExecuteUbergraph_StickyStatusEffectVis(EntryPoint) end

function UStickyStatusEffectVis_C:Remove() end
