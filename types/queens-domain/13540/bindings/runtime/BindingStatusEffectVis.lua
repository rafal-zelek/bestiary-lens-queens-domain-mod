---@meta

---@class UBindingStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field Sound UAudioComponent
local UBindingStatusEffectVis_C = {}

function UBindingStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UBindingStatusEffectVis_C:ExecuteUbergraph_BindingStatusEffectVis(EntryPoint) end

function UBindingStatusEffectVis_C:Remove() end
