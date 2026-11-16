---@meta

---@class AActivationTrigger_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field arrow UArrowComponent
---@field CenterPoint UBillboardComponent
---@field Box UBoxComponent
---@field Sphere USphereComponent
---@field HasAlreadybeenTriggered boolean
---@field ActivationTargets TArray<TScriptInterface<IActivatable_C>>
---@field BoxMode boolean
---@field TriggerOnExit boolean
---@field TriggerOnExitDirection FVector
---@field ['Exiting Actor'] AActor
---@field OnlyOnce boolean
---@field DisableSaveOnlyOnce boolean
---@field OnlyOnceActivatesOnLoad boolean
---@field WaitForPlayerGroundedBeforeTrigger boolean
---@field ['Require Activation Before Use'] boolean
---@field ['Required Activation Count'] int32
---@field Activations int32
---@field ['Player Is Present'] boolean
---@field ExitAnyDirection boolean
local AActivationTrigger_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AActivationTrigger_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AActivationTrigger_C:BndEvt__ActivationTrigger_Box_K2Node_ComponentBoundEvent_1_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AActivationTrigger_C:BndEvt__ActivationTrigger_Box_K2Node_ComponentBoundEvent_2_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AActivationTrigger_C:BndEvt__ActivationTrigger_Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AActivationTrigger_C:BndEvt__ActivationTrigger_Sphere_K2Node_ComponentBoundEvent_3_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function AActivationTrigger_C:CancelWaitForGrounded() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AActivationTrigger_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function AActivationTrigger_C:DoTrigger() end

---@param EntryPoint int32
function AActivationTrigger_C:ExecuteUbergraph_ActivationTrigger(EntryPoint) end

function AActivationTrigger_C:UnlockOnlyOnce() end

function AActivationTrigger_C:UserConstructionScript() end

AActivationTrigger_C['Check Pre Entry Activation'] = function(self) end

---@param Data TArray<FSavableActorState>
AActivationTrigger_C['Restore State From Save Data'] = function(self, Data) end
