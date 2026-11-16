---@meta

---@class UCaputRing_StatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field Sound UAudioComponent
local UCaputRing_StatusEffectVis_C = {}

function UCaputRing_StatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UCaputRing_StatusEffectVis_C:ExecuteUbergraph_CaputRing_StatusEffectVis(EntryPoint) end

function UCaputRing_StatusEffectVis_C:Remove() end
