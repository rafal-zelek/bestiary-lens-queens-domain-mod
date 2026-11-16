---@meta

---@class ACuttledog_Bubble_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerTouchbox USphereComponent
---@field ActorUROManager UActorUROManager
---@field WorldEventReceiver UWorldEventReceiver_C
---@field HitBox USphereComponent
---@field Sphere UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field PopAnim_Dissovle_5FE0E98A47EA802072BBBEAB987BB789 float
---@field PopAnim_NewTrack_0_5FE0E98A47EA802072BBBEAB987BB789 float
---@field PopAnim__Direction_5FE0E98A47EA802072BBBEAB987BB789 ETimelineDirection::Type
---@field PopAnim UTimelineComponent
---@field Bounce_Squash_1520456F489F82E7C509BA946C8FE51B float
---@field Bounce_Pos_1520456F489F82E7C509BA946C8FE51B float
---@field Bounce__Direction_1520456F489F82E7C509BA946C8FE51B ETimelineDirection::Type
---@field bounce UTimelineComponent
---@field ScaleUp_NewTrack_0_4864F3624646F0C2E6E641AA3D4F8B86 float
---@field ScaleUp__Direction_4864F3624646F0C2E6E641AA3D4F8B86 ETimelineDirection::Type
---@field ScaleUp UTimelineComponent
---@field Velocity FVector
---@field GroundHeight float
---@field BounceHeight float
---@field BounceTime float
---@field BounceTimeVariation float
---@field BounceHeightVariation float
---@field LifeTime float
---@field Damage FFB_DamageAttributeSet
---@field ScaleMult float
---@field BubbleSize float
---@field ExplodeSystem UNiagaraSystem
---@field ExplodeSound USoundBase
---@field SrtartBounceHeight float
---@field LocalDT float
---@field ScaleUpSpeed float
---@field DisablePhysics boolean
local ACuttledog_Bubble_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ACuttledog_Bubble_C:BndEvt__Cuttledog_Bubble_PlayerTouchbox_K2Node_ComponentBoundEvent_2_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

function ACuttledog_Bubble_C:BndEvt__Cuttledog_Bubble_WorldEventReceiver_K2Node_ComponentBoundEvent_0_OnWorldRefresh__DelegateSignature() end

function ACuttledog_Bubble_C:Bounce__Bounce__EventFunc() end

function ACuttledog_Bubble_C:Bounce__FinishedFunc() end

function ACuttledog_Bubble_C:Bounce__UpdateFunc() end

function ACuttledog_Bubble_C:CorrectMaxHeightForENV() end

---@param EntryPoint int32
function ACuttledog_Bubble_C:ExecuteUbergraph_Cuttledog_Bubble(EntryPoint) end

---@param bPosOverridden boolean
function ACuttledog_Bubble_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ACuttledog_Bubble_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ACuttledog_Bubble_C:Pop() end

function ACuttledog_Bubble_C:PopAnim__FinishedFunc() end

function ACuttledog_Bubble_C:PopAnim__UpdateFunc() end

function ACuttledog_Bubble_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ACuttledog_Bubble_C:ReceiveTick(DeltaSeconds) end

function ACuttledog_Bubble_C:ScaleUp__FinishedFunc() end

function ACuttledog_Bubble_C:ScaleUp__UpdateFunc() end

---@param Tags FGameplayTagContainer
function ACuttledog_Bubble_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ACuttledog_Bubble_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
