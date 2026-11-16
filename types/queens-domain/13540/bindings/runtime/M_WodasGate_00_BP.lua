---@meta

---@class AM_WodasGate_00_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Metal_Scrape_Heavy_Loop UAudioComponent
---@field BlockerBox UBoxComponent
---@field Timeline_0_OpenAmount_153B93FF4F6B90C58BC97EAF2281BC3F float
---@field Timeline_0__Direction_153B93FF4F6B90C58BC97EAF2281BC3F ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
---@field AlphaFog UENVControlData_C
local AM_WodasGate_00_BP_C = {}

function AM_WodasGate_00_BP_C:CloseDoor() end

---@param EntryPoint int32
function AM_WodasGate_00_BP_C:ExecuteUbergraph_M_WodasGate_00_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AM_WodasGate_00_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AM_WodasGate_00_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function AM_WodasGate_00_BP_C:OpenDoor() end

function AM_WodasGate_00_BP_C:SetToOpenState() end

function AM_WodasGate_00_BP_C:Timeline_0__FinishedFunc() end

function AM_WodasGate_00_BP_C:Timeline_0__UpdateFunc() end

function AM_WodasGate_00_BP_C:UserConstructionScript() end
