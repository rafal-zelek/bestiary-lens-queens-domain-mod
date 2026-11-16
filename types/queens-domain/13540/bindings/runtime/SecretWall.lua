---@meta

---@class ASecretWall_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DeactivationBlockerBox UBoxComponent
---@field PreviewBox1 UBoxComponent
---@field PreviewBox UBoxComponent
---@field FloorDust UNiagaraComponent
---@field TopDust UNiagaraComponent
---@field NavBlocker UBoxComponent
---@field FrontSideInteract1 UTextRenderComponent
---@field FrontSideInteract UTextRenderComponent
---@field Arrow1 UArrowComponent
---@field InteractBox UBoxComponent
---@field arrow UArrowComponent
---@field Mesh_Internal UStaticMeshComponent
---@field HintFade_NewTrack_0_DB33BF3A4B8DED5E08A9E9A89092B635 float
---@field HintFade__Direction_DB33BF3A4B8DED5E08A9E9A89092B635 ETimelineDirection::Type
---@field HintFade UTimelineComponent
---@field ActivatableTargets TArray<TScriptInterface<IActivatable_C>>
---@field ActivatableMode boolean
---@field Deactivatable boolean
---@field FirstMoveTime float
---@field FirstMove FVector
---@field SecondMoveDelay float
---@field SecondMoveTime float
---@field SecondMove FVector
---@field Mesh UStaticMesh
---@field MeshIsAtOrigin boolean
---@field OneSided boolean
---@field PreviewOpen boolean
---@field PreviewParticles boolean
---@field DustColor FLinearColor
---@field ActivationCountRequirement int32
---@field HintRuneGem RuneKeyEnum::Type
---@field EnableDeactivationBlockerBox boolean
---@field ['Regular Interaction Mode'] boolean
---@field Opened boolean
---@field StartingWallLoc FVector
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field AnimStartTime float
---@field OpenSound USoundBase
---@field OpeningSoundComp UAudioComponent
---@field DustStartingZ float
---@field ActivationCount int32
---@field NavBlockerPos FVector
---@field AnimRunning boolean
---@field LastActivateByLoadState boolean
---@field PreviewVal float
---@field SaveActivatedState boolean
---@field CurrentOpenRumble UForceFeedbackComponent
---@field OpenRumble UForceFeedbackEffect
---@field OpenRumbleLooping boolean
---@field OpenRumble_Atten UForceFeedbackAttenuation
---@field OpenFinishedRumble UForceFeedbackEffect
---@field OpenSoundOverride USoundBase
---@field FinishedMovingSound USoundBase
---@field WrongSideMessage FText
---@field DisableFogVertexColor boolean
---@field ['Don\'tCountForAchievement'] boolean
local ASecretWall_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASecretWall_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ASecretWall_C:CanOpenFromPlayerPos() end

function ASecretWall_C:ConstructionUpdateParticles() end

function ASecretWall_C:ConstructionUpdateWallPosition() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ASecretWall_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function ASecretWall_C:DisableNav() end

---@param EntryPoint int32
function ASecretWall_C:ExecuteUbergraph_SecretWall(EntryPoint) end

function ASecretWall_C:FinishOpenRumble() end

function ASecretWall_C:ForceOpen() end

function ASecretWall_C:GetAnimDuration() end

---@param Time float
---@param Pos FVector
---@param Second_Move_Progress float
function ASecretWall_C:GetAnimPos(Time, Pos, Second_Move_Progress) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ASecretWall_C:GetCurrentFogDAs(Alpha, Beta) end

---@param Pos FVector
function ASecretWall_C:GetFinalLoc(Pos) end

function ASecretWall_C:GetFinalLocLocal() end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ASecretWall_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ASecretWall_C:HintFade__FinishedFunc() end

function ASecretWall_C:HintFade__UpdateFunc() end

---@param PlayerInteracting AActor
function ASecretWall_C:Interact(PlayerInteracting) end

function ASecretWall_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASecretWall_C:ReceiveTick(DeltaSeconds) end

---@param DA UENVControlData_C
function ASecretWall_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ASecretWall_C:SetBetaFogDA(DA) end

function ASecretWall_C:SetStartingLocation() end

function ASecretWall_C:SetToFinalState() end

function ASecretWall_C:TestAnim() end

function ASecretWall_C:UpdateFogDAValues() end

function ASecretWall_C:UpdateSecretWallData() end

function ASecretWall_C:UserConstructionScript() end

---@param Component UForceFeedbackComponent
ASecretWall_C['Do Open Rumble'] = function(self, Component) end

---@param Data TArray<FSavableActorState>
ASecretWall_C['Restore State From Save Data'] = function(self, Data) end
