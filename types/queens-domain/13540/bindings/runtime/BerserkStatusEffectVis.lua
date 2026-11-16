---@meta

---@class UBerserkStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field Sound UAudioComponent
local UBerserkStatusEffectVis_C = {}

function UBerserkStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UBerserkStatusEffectVis_C:ExecuteUbergraph_BerserkStatusEffectVis(EntryPoint) end

function UBerserkStatusEffectVis_C:Remove() end
