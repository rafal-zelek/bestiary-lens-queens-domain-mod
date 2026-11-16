---@meta

---@class ANecroWall_Manager_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DissolveAudio UAudioComponent
---@field DissolveTimeline_Dissolve_804D9D474460564444080BABA033B860 float
---@field DissolveTimeline__Direction_804D9D474460564444080BABA033B860 ETimelineDirection::Type
---@field DissolveTimeline UTimelineComponent
---@field ActivationTargetTimeDelay float
---@field DissolveActivationTargets TArray<TScriptInterface<IActivatable_C>>
---@field NecroHeads TArray<ANecroHead_BP_C>
---@field NamedSaveDataToIncrement TArray<FName>
---@field BoundingBoxMesh ANecro_Deco_Base_C
---@field DissolveRadius float
---@field DissolveTime float
---@field DissolveRate float
---@field UpdateDissolve FNecroWall_Manager_BP_CUpdateDissolve
---@field DissolveStarted FNecroWall_Manager_BP_CDissolveStarted
---@field DissolvePos FVector
---@field OnLoadedAsDissolved FNecroWall_Manager_BP_COnLoadedAsDissolved
---@field PreviewDissolve boolean
---@field PreviewDissolveHead ANecroHead_BP_C
---@field PreviewDissolveProgress float
---@field Destroyed boolean
---@field CurrentBloodSprays TArray<UNiagaraComponent>
---@field DissolveFinished FNecroWall_Manager_BP_CDissolveFinished
---@field DissolveWidth float
---@field SprayPFXCount int32
---@field ['DissolveSoundFadeTime%'] float
---@field ForceOtherNecroWall ANecroWall_Manager_BP_C
---@field ActivatePostCollisionDisableAndOnLoad TArray<TScriptInterface<IActivatable_C>>
local ANecroWall_Manager_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ANecroWall_Manager_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Origin FVector
function ANecroWall_Manager_BP_C:CalculateDissolveParams(Origin) end

function ANecroWall_Manager_BP_C:ChainDissolve() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ANecroWall_Manager_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function ANecroWall_Manager_BP_C:DissolveFinished__DelegateSignature() end

---@param Head ANecroHead_BP_C
function ANecroWall_Manager_BP_C:DissolveNecroWall(Head) end

---@param Pos FVector
---@param DelayBeforeCollisionDisable float
function ANecroWall_Manager_BP_C:DissolveStarted__DelegateSignature(Pos, DelayBeforeCollisionDisable) end

function ANecroWall_Manager_BP_C:DissolveTimeline__FinishedFunc() end

function ANecroWall_Manager_BP_C:DissolveTimeline__NewTrack_0__EventFunc() end

function ANecroWall_Manager_BP_C:DissolveTimeline__UpdateFunc() end

---@param EntryPoint int32
function ANecroWall_Manager_BP_C:ExecuteUbergraph_NecroWall_Manager_BP(EntryPoint) end

function ANecroWall_Manager_BP_C:OnLoadedAsDissolved__DelegateSignature() end

function ANecroWall_Manager_BP_C:ReceiveBeginPlay() end

function ANecroWall_Manager_BP_C:SpawnBloodSpray() end

---@param Radius float
function ANecroWall_Manager_BP_C:UpdateDissolve__DelegateSignature(Radius) end

function ANecroWall_Manager_BP_C:UserConstructionScript() end

ANecroWall_Manager_BP_C['DissolveTimeline__fade out audio__EventFunc'] = function(self) end

ANecroWall_Manager_BP_C['Refresh Update Events'] = function(self) end

---@param Data TArray<FSavableActorState>
ANecroWall_Manager_BP_C['Restore State From Save Data'] = function(self, Data) end
