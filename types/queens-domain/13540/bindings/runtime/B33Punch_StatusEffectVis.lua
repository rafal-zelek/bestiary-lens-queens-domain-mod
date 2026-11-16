---@meta

---@class UB33Punch_StatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field Sound UAudioComponent
local UB33Punch_StatusEffectVis_C = {}

function UB33Punch_StatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UB33Punch_StatusEffectVis_C:ExecuteUbergraph_B33Punch_StatusEffectVis(EntryPoint) end

function UB33Punch_StatusEffectVis_C:Remove() end
