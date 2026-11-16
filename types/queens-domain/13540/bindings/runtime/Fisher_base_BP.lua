---@meta

---@class AFisher_base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DropDownAfterInterrupt_JumpArc_7E804EA2432A0139619AFFAA043DA4C7 float
---@field DropDownAfterInterrupt__Direction_7E804EA2432A0139619AFFAA043DA4C7 ETimelineDirection::Type
---@field DropDownAfterInterrupt UTimelineComponent
---@field JumpAttackArc_RotationFlatten_366B64E944D38E7BC23DA3AF976FECFC float
---@field JumpAttackArc_initialdoin_366B64E944D38E7BC23DA3AF976FECFC float
---@field JumpAttackArc_JumpArc_366B64E944D38E7BC23DA3AF976FECFC float
---@field JumpAttackArc__Direction_366B64E944D38E7BC23DA3AF976FECFC ETimelineDirection::Type
---@field JumpAttackArc UTimelineComponent
---@field WanderObjective FVector
---@field HasValidJumpAttackArc boolean
---@field FishJumpPath TArray<FVector>
---@field ['Out Last FishJump Destination'] FVector
---@field FishJumpAttackHoming float
---@field HitTargetWithJumpAttack boolean
---@field FlopMontage UAnimMontage
---@field JumpStartPos FVector
---@field GroundFallTarget FVector
---@field JumpingBack boolean
---@field GroundFallStartPos FVector
---@field JumpBackPFX UNiagaraSystem
---@field JumpbackSFX USoundCue
---@field ReturnSplashScale FVector
---@field InAirWithJump boolean
---@field JumpAttackHeightDeltaRequirement float
---@field JumpAttackHeightDeltaMax float
---@field JumpAttackPositionalChecksPassed boolean
---@field CurrentHeightDifferenceTracker float
---@field FLippyfloppystartrotation FRotator
---@field JumpHitTriggered boolean
local AFisher_base_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AFisher_base_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AFisher_base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Alpha float
---@param Pos FVector
---@param Rot FRotator
function AFisher_base_BP_C:CalculateJumpArcPosition(Alpha, Pos, Rot) end

function AFisher_base_BP_C:CalculateReturnArc() end

---@param bIgnoreWeight boolean
---@param Index int32
function AFisher_base_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function AFisher_base_BP_C:CancelJumpAttack() end

function AFisher_base_BP_C:CheckChase() end

function AFisher_base_BP_C:CheckForValidJumpAttackArc() end

function AFisher_base_BP_C:ContinueWandering() end

function AFisher_base_BP_C:DoBiteAttack() end

---@param FXLoc FVector
function AFisher_base_BP_C:DoCustomDamagedFX(FXLoc) end

function AFisher_base_BP_C:DoJumpAttack() end

---@param OutHit FHitResult
function AFisher_base_BP_C:DoWaterCheckTrace(OutHit) end

function AFisher_base_BP_C:DropDownAfterInterrupt__FinishedFunc() end

function AFisher_base_BP_C:DropDownAfterInterrupt__UpdateFunc() end

---@param EntryPoint int32
function AFisher_base_BP_C:ExecuteUbergraph_Fisher_base_BP(EntryPoint) end

function AFisher_base_BP_C:FinishedAttack() end

function AFisher_base_BP_C:ForceUpdateJumpAttackPath() end

---@param Start FVector
---@param Range float
---@param Target FVector
---@param water boolean
---@param AnyHit boolean
function AFisher_base_BP_C:GetGroundFallTarget(Start, Range, Target, water, AnyHit) end

---@param TookDamageSFX USoundBase
function AFisher_base_BP_C:GetTookDamageSFX(TookDamageSFX) end

function AFisher_base_BP_C:HitSomethingDuringJump() end

function AFisher_base_BP_C:JumpAttackArc__FinishedFunc() end

function AFisher_base_BP_C:JumpAttackArc__UpdateFunc() end

function AFisher_base_BP_C:JumpAttackCOnditionTick() end

function AFisher_base_BP_C:JumpBack() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AFisher_base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param Pos FVector
function AFisher_base_BP_C:OffsetByCapsuleHeight(Pos) end

---@param NotifyName FName
function AFisher_base_BP_C:OnBlendOut_0B6A8B92426D6F0DBBBC0C8782ECB6E2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnBlendOut_4A58853C4E35D715D0C12CB291A2DC74(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnBlendOut_C9AC6CF544F86434EBA355A20689D8D2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnCompleted_0B6A8B92426D6F0DBBBC0C8782ECB6E2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnCompleted_4A58853C4E35D715D0C12CB291A2DC74(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnCompleted_C9AC6CF544F86434EBA355A20689D8D2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnInterrupted_0B6A8B92426D6F0DBBBC0C8782ECB6E2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnInterrupted_4A58853C4E35D715D0C12CB291A2DC74(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnInterrupted_C9AC6CF544F86434EBA355A20689D8D2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnNotifyBegin_0B6A8B92426D6F0DBBBC0C8782ECB6E2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnNotifyBegin_4A58853C4E35D715D0C12CB291A2DC74(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnNotifyBegin_C9AC6CF544F86434EBA355A20689D8D2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnNotifyEnd_0B6A8B92426D6F0DBBBC0C8782ECB6E2(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnNotifyEnd_4A58853C4E35D715D0C12CB291A2DC74(NotifyName) end

---@param NotifyName FName
function AFisher_base_BP_C:OnNotifyEnd_C9AC6CF544F86434EBA355A20689D8D2(NotifyName) end

function AFisher_base_BP_C:PlayDeathSound() end

function AFisher_base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFisher_base_BP_C:ReceiveTick(DeltaSeconds) end

function AFisher_base_BP_C:SnapToWaterSurface() end

function AFisher_base_BP_C:Stagger() end

function AFisher_base_BP_C:StartWandering() end

function AFisher_base_BP_C:StopWandering() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AFisher_base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AFisher_base_BP_C:TryInterruptJumpAttack() end

---@param TurnSpeed float
---@param TargetPlayer AActor
---@param bDisableUprighting boolean
---@param RotationTargetOffset float
function AFisher_base_BP_C:UpdateCharacterRotation(TurnSpeed, TargetPlayer, bDisableUprighting, RotationTargetOffset) end

AFisher_base_BP_C['Flatten Rotation'] = function(self) end

AFisher_base_BP_C['Should Move Towards Player'] = function(self) end

AFisher_base_BP_C['Spawn DeathParticles'] = function(self) end
