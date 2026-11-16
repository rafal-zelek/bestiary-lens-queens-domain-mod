---@meta

---@class AAqrStatuePuzzleDoor_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EyeTarget_4 UBillboardComponent
---@field EyeTarget_3 UBillboardComponent
---@field EyeTarget_2 UBillboardComponent
---@field EyeTarget_1 UBillboardComponent
---@field Eye4 UBillboardComponent
---@field Eye3 UBillboardComponent
---@field Eye2 UBillboardComponent
---@field Eye1 UBillboardComponent
---@field RitualLift_Broken_SimBake USkeletalMeshComponent
---@field StaticMesh UStaticMeshComponent
---@field CurrentActivationCount int32
---@field NavUpdater TScriptInterface<IActivatable_C>
---@field EyeLaserSources TArray<USceneComponent>
---@field EyeLaserTargets TArray<USceneComponent>
---@field OfferingPlates TArray<AAQ_OfferingPoint_BP_C>
---@field EyeLaserPFX TArray<UNiagaraComponent>
local AAqrStatuePuzzleDoor_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AAqrStatuePuzzleDoor_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AAqrStatuePuzzleDoor_C:Crumble() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AAqrStatuePuzzleDoor_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function AAqrStatuePuzzleDoor_C:DoLaserAnimation() end

---@param EntryPoint int32
function AAqrStatuePuzzleDoor_C:ExecuteUbergraph_AqrStatuePuzzleDoor(EntryPoint) end

function AAqrStatuePuzzleDoor_C:ReceiveBeginPlay() end

---@param Data TArray<FSavableActorState>
AAqrStatuePuzzleDoor_C['Restore State From Save Data'] = function(self, Data) end
