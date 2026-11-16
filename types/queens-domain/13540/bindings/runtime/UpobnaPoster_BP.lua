---@meta

---@class AUpobnaPoster_BP_C : AInspectText_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field UpobnaPoster_SM UStaticMeshComponent
---@field FogDA UENVControlData_C
local AUpobnaPoster_BP_C = {}

---@param EntryPoint int32
function AUpobnaPoster_BP_C:ExecuteUbergraph_UpobnaPoster_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AUpobnaPoster_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function AUpobnaPoster_BP_C:GetInteractDir() end

function AUpobnaPoster_BP_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function AUpobnaPoster_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AUpobnaPoster_BP_C:SetBetaFogDA(DA) end

function AUpobnaPoster_BP_C:UpdateFogDAValues() end
