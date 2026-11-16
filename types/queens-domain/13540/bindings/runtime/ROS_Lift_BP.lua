---@meta

---@class AROS_Lift_BP_C : AElevator_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DeactivateTrigger UBoxComponent
---@field CrushAreaCollision UCrushAreaCollision_C
---@field ActivateTrigger UBoxComponent
---@field StaticMesh UStaticMeshComponent
---@field PlayerOnPlatform boolean
local AROS_Lift_BP_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AROS_Lift_BP_C:BndEvt__ROS_Lift_BP_ActivateTrigger_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AROS_Lift_BP_C:BndEvt__ROS_Lift_BP_DeactivateTrigger_K2Node_ComponentBoundEvent_2_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function AROS_Lift_BP_C:ExecuteUbergraph_ROS_Lift_BP(EntryPoint) end

function AROS_Lift_BP_C:ReachedEnd() end

function AROS_Lift_BP_C:StartElevatorTowardsEnd() end

function AROS_Lift_BP_C:StartReturnTimer() end

function AROS_Lift_BP_C:UserConstructionScript() end

---@param Index int32
---@param Data int32
AROS_Lift_BP_C['Save Data Index to World Save'] = function(self, Index, Data) end
