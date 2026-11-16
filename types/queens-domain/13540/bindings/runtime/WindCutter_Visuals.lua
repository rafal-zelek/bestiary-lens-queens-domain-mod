---@meta

---@class AWindCutter_Visuals_C : ADagger_Visuals_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RingMesh UStaticMeshComponent
---@field FX UNiagaraComponent
local AWindCutter_Visuals_C = {}

---@param EntryPoint int32
function AWindCutter_Visuals_C:ExecuteUbergraph_WindCutter_Visuals(EntryPoint) end

function AWindCutter_Visuals_C:ReceiveBeginPlay() end

function AWindCutter_Visuals_C:SetHide() end

function AWindCutter_Visuals_C:SetShow() end
