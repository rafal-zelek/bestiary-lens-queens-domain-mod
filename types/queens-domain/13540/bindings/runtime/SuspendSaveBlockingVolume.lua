---@meta

---@class ASuspendSaveBlockingVolume_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
local ASuspendSaveBlockingVolume_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ASuspendSaveBlockingVolume_C:BndEvt__SuspendSaveBlockingVolume_Box_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ASuspendSaveBlockingVolume_C:BndEvt__SuspendSaveBlockingVolume_Box_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function ASuspendSaveBlockingVolume_C:ExecuteUbergraph_SuspendSaveBlockingVolume(EntryPoint) end
