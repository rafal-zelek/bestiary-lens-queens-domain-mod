---@meta

---@class AOW_TP_Shutter_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Metal_Scrape_Heavy_Loop UAudioComponent
---@field BlockerBox UBoxComponent
---@field Timeline_0_OpenAmount_1827976E4EE072F944BA27BA581FB8C9 float
---@field Timeline_0__Direction_1827976E4EE072F944BA27BA581FB8C9 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
---@field AlphaFog UENVControlData_C
---@field EndScale float
local AOW_TP_Shutter_BP_C = {}

function AOW_TP_Shutter_BP_C:CloseDoor() end

---@param EntryPoint int32
function AOW_TP_Shutter_BP_C:ExecuteUbergraph_OW_TP_Shutter_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AOW_TP_Shutter_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function AOW_TP_Shutter_BP_C:OpenDoor() end

function AOW_TP_Shutter_BP_C:SetToOpenState() end

function AOW_TP_Shutter_BP_C:Timeline_0__FinishedFunc() end

function AOW_TP_Shutter_BP_C:Timeline_0__UpdateFunc() end

function AOW_TP_Shutter_BP_C:UserConstructionScript() end
