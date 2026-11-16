---@meta

---@class APT_Lever_00_BP_C : AElevatorLever_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox2 UBoxComponent
---@field LockedInteractBox UBoxComponent
local APT_Lever_00_BP_C = {}

---@param EntryPoint int32
function APT_Lever_00_BP_C:ExecuteUbergraph_PT_Lever_00_BP(EntryPoint) end

function APT_Lever_00_BP_C:Lock() end

function APT_Lever_00_BP_C:Unlock() end
