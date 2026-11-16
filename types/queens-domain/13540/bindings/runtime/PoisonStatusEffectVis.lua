---@meta

---@class UPoisonStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
local UPoisonStatusEffectVis_C = {}

function UPoisonStatusEffectVis_C:Apply() end

function UPoisonStatusEffectVis_C:ApplyTick() end

---@param EntryPoint int32
function UPoisonStatusEffectVis_C:ExecuteUbergraph_PoisonStatusEffectVis(EntryPoint) end

function UPoisonStatusEffectVis_C:Remove() end
