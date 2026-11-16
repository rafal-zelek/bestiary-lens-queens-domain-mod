---@meta

---@class UIronSkinStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field Sound UAudioComponent
local UIronSkinStatusEffectVis_C = {}

function UIronSkinStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UIronSkinStatusEffectVis_C:ExecuteUbergraph_IronSkinStatusEffectVis(EntryPoint) end

function UIronSkinStatusEffectVis_C:Remove() end
