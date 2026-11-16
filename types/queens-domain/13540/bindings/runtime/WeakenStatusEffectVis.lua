---@meta

---@class UWeakenStatusEffectVis_C : UStatusEffectVisBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Applied boolean
---@field FX UNiagaraComponent
---@field Sound UAudioComponent
local UWeakenStatusEffectVis_C = {}

function UWeakenStatusEffectVis_C:Apply() end

---@param EntryPoint int32
function UWeakenStatusEffectVis_C:ExecuteUbergraph_WeakenStatusEffectVis(EntryPoint) end

---@param DeltaSeconds float
function UWeakenStatusEffectVis_C:ReceiveTick(DeltaSeconds) end

function UWeakenStatusEffectVis_C:Remove() end
