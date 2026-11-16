---@meta

---@class ATriggerElevatorLever_C : AElevatorLever_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Billboard UBillboardComponent
local ATriggerElevatorLever_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ATriggerElevatorLever_C:BndEvt__TriggerElevatorLever_InteractBox_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param EntryPoint int32
function ATriggerElevatorLever_C:ExecuteUbergraph_TriggerElevatorLever(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ATriggerElevatorLever_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end
