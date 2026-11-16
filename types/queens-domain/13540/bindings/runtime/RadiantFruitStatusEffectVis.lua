---@meta

---@class URadiantFruitStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field Sound UAudioComponent
local URadiantFruitStatusEffectVis_C = {}

function URadiantFruitStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function URadiantFruitStatusEffectVis_C:ExecuteUbergraph_RadiantFruitStatusEffectVis(EntryPoint) end

function URadiantFruitStatusEffectVis_C:Remove() end
