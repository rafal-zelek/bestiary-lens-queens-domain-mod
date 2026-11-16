---@meta

---@class ANPC_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlockerBox UBoxComponent
---@field GiveItemTargetSpot USceneComponent
---@field LookAtPlayerArea USphereComponent
---@field InteractBox UBoxComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field ActorUROManager UActorUROManager
---@field DefaultSceneRoot USceneComponent
---@field ['Should Look At Player'] boolean
---@field IdleAnim UAnimSequence
---@field AlphaFog UENVControlData_C
---@field DialogueTree UFS_DialogueData
---@field BoneForPlayerToLookAt FName
---@field PlayerIsTalkingTo boolean
---@field LocalDT float
---@field TargetLookLoc FVector
---@field ['Player Interacting'] AFS_PlayerChar_C
---@field ['NPC Data'] UNPC_Data_C
---@field Name FText
---@field DoNotAddToJournalAutomatically boolean
---@field InteractAngleLimit float
---@field AutoLookOnApproach boolean
---@field StopLookingAtEndOfDialogue boolean
---@field DialogueEnded FNPC_Base_CDialogueEnded
---@field DisableLookAt boolean
---@field DestroyOnEndTalk boolean
---@field BlockInteract boolean
local ANPC_Base_C = {}

---@param Dialogue FText
---@param ProcessedText FText
function ANPC_Base_C:ApplyFormatKeysToDialogue(Dialogue, ProcessedText) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ANPC_Base_C:BndEvt__NPC_Base_LookAtPlayerArea_K2Node_ComponentBoundEvent_1_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ANPC_Base_C:BndEvt__NPC_Base_Sphere_K2Node_ComponentBoundEvent_0_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function ANPC_Base_C:DialogueEnded__DelegateSignature() end

function ANPC_Base_C:EndDialogue() end

---@param EntryPoint int32
function ANPC_Base_C:ExecuteUbergraph_NPC_Base(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ANPC_Base_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ANPC_Base_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param bPosOverridden boolean
function ANPC_Base_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ANPC_Base_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param PlayerInteracting AActor
function ANPC_Base_C:Interact(PlayerInteracting) end

function ANPC_Base_C:PlayerEnteredArea() end

function ANPC_Base_C:PlayerLeftArea() end

---@param DeltaSeconds float
function ANPC_Base_C:ReceiveTick(DeltaSeconds) end

function ANPC_Base_C:ReenableInteract() end

---@param Location FVector
---@param Hit FHitResult
function ANPC_Base_C:ResistHit(Location, Hit) end

---@param DA UENVControlData_C
function ANPC_Base_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ANPC_Base_C:SetBetaFogDA(DA) end

function ANPC_Base_C:SetTargetLookLoc() end

---@param Player_Interacting AFS_PlayerChar_C
function ANPC_Base_C:SetUpForDialogue(Player_Interacting) end

---@param Tags FGameplayTagContainer
function ANPC_Base_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ANPC_Base_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ANPC_Base_C:UnreparePlayer() end

function ANPC_Base_C:UpdateFogDAValues() end

function ANPC_Base_C:UpdatePlayerLookat() end

function ANPC_Base_C:UserConstructionScript() end

ANPC_Base_C['Prepare Player'] = function(self) end
