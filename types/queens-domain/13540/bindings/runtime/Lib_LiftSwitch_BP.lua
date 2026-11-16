---@meta

---@class ALib_LiftSwitch_BP_C : AElevatorLever_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox2 UBoxComponent
---@field LockedInteractBox UBoxComponent
local ALib_LiftSwitch_BP_C = {}

---@param EntryPoint int32
function ALib_LiftSwitch_BP_C:ExecuteUbergraph_Lib_LiftSwitch_BP(EntryPoint) end

function ALib_LiftSwitch_BP_C:Lock() end

function ALib_LiftSwitch_BP_C:Unlock() end
