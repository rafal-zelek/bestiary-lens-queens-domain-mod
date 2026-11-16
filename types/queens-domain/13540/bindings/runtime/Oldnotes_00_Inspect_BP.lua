---@meta

---@class AOldnotes_00_Inspect_BP_C : AInspectText_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OldNotes_00_SM UStaticMeshComponent
---@field FogDA UENVControlData_C
local AOldnotes_00_Inspect_BP_C = {}

---@param EntryPoint int32
function AOldnotes_00_Inspect_BP_C:ExecuteUbergraph_Oldnotes_00_Inspect_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AOldnotes_00_Inspect_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function AOldnotes_00_Inspect_BP_C:GetInteractDir() end

function AOldnotes_00_Inspect_BP_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function AOldnotes_00_Inspect_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AOldnotes_00_Inspect_BP_C:SetBetaFogDA(DA) end

function AOldnotes_00_Inspect_BP_C:UpdateFogDAValues() end
