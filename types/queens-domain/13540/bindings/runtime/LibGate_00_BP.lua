---@meta

---@class ALibGate_00_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Metal_Scrape_Heavy_Loop UAudioComponent
---@field BlockerBox UBoxComponent
---@field Timeline_0_OpenAmount_641F28E2451BB7F82F5F9F911D9A3405 float
---@field Timeline_0__Direction_641F28E2451BB7F82F5F9F911D9A3405 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Activations int32
---@field DoubleActivationneeded boolean
---@field AlphaFog UENVControlData_C
---@field OpenSpeed float
local ALibGate_00_BP_C = {}

function ALibGate_00_BP_C:CloseDoor() end

---@param EntryPoint int32
function ALibGate_00_BP_C:ExecuteUbergraph_LibGate_00_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ALibGate_00_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function ALibGate_00_BP_C:OpenDoor() end

function ALibGate_00_BP_C:SetToOpenState() end

function ALibGate_00_BP_C:Timeline_0__FinishedFunc() end

function ALibGate_00_BP_C:Timeline_0__UpdateFunc() end

function ALibGate_00_BP_C:UserConstructionScript() end
