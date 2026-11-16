---@meta

---@class AROS_Door_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MoveSound UAudioComponent
---@field Timeline_0_OpenAmount_6F80D6114BA2E0A952DB738BCC546925 float
---@field Timeline_0__Direction_6F80D6114BA2E0A952DB738BCC546925 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
local AROS_Door_BP_C = {}

function AROS_Door_BP_C:CloseDoor() end

---@param EntryPoint int32
function AROS_Door_BP_C:ExecuteUbergraph_ROS_Door_BP(EntryPoint) end

function AROS_Door_BP_C:OpenDoor() end

function AROS_Door_BP_C:SetToOpenState() end

function AROS_Door_BP_C:Timeline_0__FinishedFunc() end

function AROS_Door_BP_C:Timeline_0__UpdateFunc() end
