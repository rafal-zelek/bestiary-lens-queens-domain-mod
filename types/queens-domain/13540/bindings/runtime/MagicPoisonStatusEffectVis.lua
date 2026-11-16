---@meta

---@class UMagicPoisonStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field Sound UAudioComponent
local UMagicPoisonStatusEffectVis_C = {}

function UMagicPoisonStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UMagicPoisonStatusEffectVis_C:ExecuteUbergraph_MagicPoisonStatusEffectVis(EntryPoint) end

function UMagicPoisonStatusEffectVis_C:Remove() end
