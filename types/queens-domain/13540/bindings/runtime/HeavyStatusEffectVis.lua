---@meta

---@class UHeavyStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field HeavyLoop UAudioComponent
local UHeavyStatusEffectVis_C = {}

function UHeavyStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UHeavyStatusEffectVis_C:ExecuteUbergraph_HeavyStatusEffectVis(EntryPoint) end

function UHeavyStatusEffectVis_C:Remove() end
