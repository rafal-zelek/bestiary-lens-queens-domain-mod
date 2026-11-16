---@meta

---@class ASZ_Door_02_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Metal_Scrape_Heavy_Loop UAudioComponent
---@field BlockerBox UBoxComponent
---@field Frame UStaticMeshComponent
---@field Timeline_0_OpenAmount_368718224B9C36152768F38CA4983465 float
---@field Timeline_0__Direction_368718224B9C36152768F38CA4983465 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
---@field AlphaFog UENVControlData_C
local ASZ_Door_02_BP_C = {}

function ASZ_Door_02_BP_C:CloseDoor() end

---@param EntryPoint int32
function ASZ_Door_02_BP_C:ExecuteUbergraph_SZ_Door_02_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ASZ_Door_02_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function ASZ_Door_02_BP_C:OpenDoor() end

function ASZ_Door_02_BP_C:SetToOpenState() end

function ASZ_Door_02_BP_C:Timeline_0__FinishedFunc() end

function ASZ_Door_02_BP_C:Timeline_0__NewTrack_0__EventFunc() end

function ASZ_Door_02_BP_C:Timeline_0__UpdateFunc() end

function ASZ_Door_02_BP_C:UserConstructionScript() end
