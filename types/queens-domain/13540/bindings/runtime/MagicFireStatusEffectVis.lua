---@meta

---@class UMagicFireStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field Sound UAudioComponent
local UMagicFireStatusEffectVis_C = {}

function UMagicFireStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UMagicFireStatusEffectVis_C:ExecuteUbergraph_MagicFireStatusEffectVis(EntryPoint) end

function UMagicFireStatusEffectVis_C:Remove() end
