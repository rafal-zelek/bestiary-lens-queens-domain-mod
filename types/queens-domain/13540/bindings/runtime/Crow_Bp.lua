---@meta

---@class ACrow_Bp_C : AFS_CrowBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpookSphere USphereComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field SpookPath USplineComponent
---@field Scene USceneComponent
---@field ActorUROManager UActorUROManager
---@field SpookTimeline_Time_6144C74E4C72A021AB224DB51A2351E4 float
---@field SpookTimeline__Direction_6144C74E4C72A021AB224DB51A2351E4 ETimelineDirection::Type
---@field SpookTimeline UTimelineComponent
---@field Respawns boolean
---@field SpookTimeStart float
---@field SpookDuration float
---@field OwningCircle ACrowCircle_C
---@field ['Spook LaunchLocation'] FVector
---@field InitialLoc FTransform
---@field Fog UENVControlData_C
---@field EnableTrigger boolean
---@field CallMontage UAnimMontage
---@field MinCallMontageSpeed float
---@field MaxCallMontageSpeedScale float
---@field RespawnDuration float
---@field SPookFlightSpeedMult float
---@field IdleAnimIndex int32
---@field DeathSound USoundCue
---@field AutoTangentLength float
---@field AutoReverse boolean
---@field AutoTangentLength_Start float
local ACrow_Bp_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ACrow_Bp_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ACrow_Bp_C:AutoLink() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ACrow_Bp_C:BndEvt__Crow_Bp_Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

function ACrow_Bp_C:CancelResetTimer() end

function ACrow_Bp_C:Caw() end

function ACrow_Bp_C:ChangeFlapping() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ACrow_Bp_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function ACrow_Bp_C:Die() end

---@param EntryPoint int32
function ACrow_Bp_C:ExecuteUbergraph_Crow_Bp(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ACrow_Bp_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function ACrow_Bp_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ACrow_Bp_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ACrow_Bp_C:GetOwningCircleSplineBP() end

function ACrow_Bp_C:GetSpookPathBP() end

---@param NotifyName FName
function ACrow_Bp_C:OnBlendOut_D427C3A041AFDD8B0DDE37AC2F7A7796(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnBlendOut_E6D74CE94B567C8423368F913CA26DC8(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnCompleted_D427C3A041AFDD8B0DDE37AC2F7A7796(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnCompleted_E6D74CE94B567C8423368F913CA26DC8(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnInterrupted_D427C3A041AFDD8B0DDE37AC2F7A7796(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnInterrupted_E6D74CE94B567C8423368F913CA26DC8(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnNotifyBegin_D427C3A041AFDD8B0DDE37AC2F7A7796(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnNotifyBegin_E6D74CE94B567C8423368F913CA26DC8(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnNotifyEnd_D427C3A041AFDD8B0DDE37AC2F7A7796(NotifyName) end

---@param NotifyName FName
function ACrow_Bp_C:OnNotifyEnd_E6D74CE94B567C8423368F913CA26DC8(NotifyName) end

function ACrow_Bp_C:ReceiveBeginPlay() end

function ACrow_Bp_C:Respawn() end

---@param DA UENVControlData_C
function ACrow_Bp_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ACrow_Bp_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function ACrow_Bp_C:ShouldNotBeTargetedByHoming(Tags) end

function ACrow_Bp_C:Spook() end

function ACrow_Bp_C:SpookTimeline__FinishedFunc() end

function ACrow_Bp_C:SpookTimeline__UpdateFunc() end

function ACrow_Bp_C:StartResetTimer() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ACrow_Bp_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ACrow_Bp_C:UpdateFogDAValues() end

function ACrow_Bp_C:UserConstructionScript() end

ACrow_Bp_C['Prepare For Cawing'] = function(self) end

ACrow_Bp_C['Remove Spline Comp'] = function(self) end
