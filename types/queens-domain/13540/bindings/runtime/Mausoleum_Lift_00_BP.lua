---@meta

---@class AMausoleum_Lift_00_BP_C : AElevator_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Cube UStaticMeshComponent
local AMausoleum_Lift_00_BP_C = {}

---@param EntryPoint int32
function AMausoleum_Lift_00_BP_C:ExecuteUbergraph_Mausoleum_Lift_00_BP(EntryPoint) end

function AMausoleum_Lift_00_BP_C:GetCollidingComponents() end

---@param DeltaSeconds float
function AMausoleum_Lift_00_BP_C:ReceiveTick(DeltaSeconds) end

function AMausoleum_Lift_00_BP_C:Updatenav() end
