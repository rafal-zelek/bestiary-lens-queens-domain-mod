---@meta

---@class UMagicRotResistStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field Sound UAudioComponent
local UMagicRotResistStatusEffectVis_C = {}

function UMagicRotResistStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UMagicRotResistStatusEffectVis_C:ExecuteUbergraph_MagicRotResistStatusEffectVis(EntryPoint) end

function UMagicRotResistStatusEffectVis_C:Remove() end
