---@meta

---@class APoltergeist_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SkeletalMesh USkeletalMeshComponent
---@field StaticMesh UStaticMeshComponent
---@field LiftUp_LiftUp_514737DB4D4569CA51260FA77909CB28 float
---@field LiftUp__Direction_514737DB4D4569CA51260FA77909CB28 ETimelineDirection::Type
---@field LiftUp UTimelineComponent
---@field ActiveThrowing boolean
---@field Target FVector
---@field CurrentLaser UNiagaraComponent
---@field StartPos FVector
---@field AlreadyHitPlayer boolean
---@field ThrowHitboxActive boolean
---@field WarbleEnabled boolean
---@field StartRotation FRotator
---@field DesiredHeight float
---@field ThrowSPeed float
---@field Dying boolean
---@field HomingStrength float
---@field ['SelfDamage%OnImpact'] float
---@field TargetDir FVector
---@field ImpactSound USoundBase
---@field LocalTime float
local APoltergeist_Base_BP_C = {}

function APoltergeist_Base_BP_C:Aggrod() end

---@param InputPin UPoltergeist_Visuals_C
function APoltergeist_Base_BP_C:ApplyVisuals(InputPin) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function APoltergeist_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function APoltergeist_Base_BP_C:BndEvt__Poltergeist_Base_BP_CapsuleComponent_K2Node_ComponentBoundEvent_0_ComponentHitSignature__DelegateSignature(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

function APoltergeist_Base_BP_C:CancelThrow() end

function APoltergeist_Base_BP_C:CheckChase() end

function APoltergeist_Base_BP_C:ContinueWandering() end

function APoltergeist_Base_BP_C:DieAnim() end

function APoltergeist_Base_BP_C:EndParalysis() end

---@param EntryPoint int32
function APoltergeist_Base_BP_C:ExecuteUbergraph_Poltergeist_Base_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function APoltergeist_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

function APoltergeist_Base_BP_C:LiftUp__FinishedFunc() end

function APoltergeist_Base_BP_C:LiftUp__UpdateFunc() end

function APoltergeist_Base_BP_C:MoveTowardsPlayer() end

---@param Duration float
function APoltergeist_Base_BP_C:Paralyze(Duration) end

function APoltergeist_Base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function APoltergeist_Base_BP_C:ReceiveTick(DeltaSeconds) end

function APoltergeist_Base_BP_C:Stagger() end

function APoltergeist_Base_BP_C:StartThrow() end

function APoltergeist_Base_BP_C:StartWandering() end

function APoltergeist_Base_BP_C:StopAllMovement() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function APoltergeist_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function APoltergeist_Base_BP_C:UnAggrod() end

---@param Fade float
function APoltergeist_Base_BP_C:UpdateDeathFade(Fade) end

APoltergeist_Base_BP_C['Init HP'] = function(self) end

APoltergeist_Base_BP_C['Update Rotation'] = function(self) end
