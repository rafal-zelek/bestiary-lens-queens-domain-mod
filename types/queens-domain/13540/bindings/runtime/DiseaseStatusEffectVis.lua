---@meta

---@class UDiseaseStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field Sound UAudioComponent
local UDiseaseStatusEffectVis_C = {}

function UDiseaseStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UDiseaseStatusEffectVis_C:ExecuteUbergraph_DiseaseStatusEffectVis(EntryPoint) end

function UDiseaseStatusEffectVis_C:Remove() end
