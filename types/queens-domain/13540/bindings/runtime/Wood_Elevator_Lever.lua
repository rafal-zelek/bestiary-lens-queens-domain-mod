---@meta

---@class AWood_Elevator_Lever_C : AElevatorLever_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox2 UBoxComponent
---@field LockedInteractBox UBoxComponent
local AWood_Elevator_Lever_C = {}

---@param EntryPoint int32
function AWood_Elevator_Lever_C:ExecuteUbergraph_Wood_Elevator_Lever(EntryPoint) end

function AWood_Elevator_Lever_C:Lock() end

function AWood_Elevator_Lever_C:Unlock() end
