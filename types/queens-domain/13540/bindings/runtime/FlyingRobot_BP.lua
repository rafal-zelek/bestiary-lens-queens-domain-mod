---@meta

---@class AFlyingRobot_BP_C : AFlyingEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BulletOrigin USceneComponent
---@field Laser UStaticMeshComponent
---@field TrapHitbox USphereComponent
---@field ActivatingTrap boolean
---@field ShelfTrapAttackRange float
---@field FlyingTrap boolean
---@field TargetFlyingTrapDir FVector
---@field FlyingTrapSpeed float
---@field ShootingMoveRepeatTimes int32
---@field RemainingShootingBursts int32
---@field FireRate float
---@field DoingSHootingAttack boolean
---@field Firing boolean
---@field TargetPos FVector
---@field LastSeenPlayerLoc FVector
---@field LastSeenPlayerVel FVector
---@field TargetHeight float
---@field TargetDistance float
---@field BulletsToFire int32
---@field CurrentShootSound UAudioComponent
local AFlyingRobot_BP_C = {}

---@param Damaged boolean
function AFlyingRobot_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AFlyingRobot_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param LeadStr float
---@param Loc FVector
function AFlyingRobot_BP_C:CalculateAttackTargetLocation(LeadStr, Loc) end

function AFlyingRobot_BP_C:CancelFiringloop() end

function AFlyingRobot_BP_C:DetectedPlayerWithLaser() end

function AFlyingRobot_BP_C:DoShootingAttack() end

---@param Mode EnemyBehaviourMode::Type
function AFlyingRobot_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AFlyingRobot_BP_C:ExecuteUbergraph_FlyingRobot_BP(EntryPoint) end

function AFlyingRobot_BP_C:Fire() end

function AFlyingRobot_BP_C:FireBullet() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AFlyingRobot_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_17A497444F3BEC2B2B67828FAC0B32E5(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_534F20E647F78EEB3CD1C2AAA2D05E61(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_705D330B4FC1BC0332149B8838E7AC4B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_798527D3406C4ABECF991E9A45425011(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_BF1F84864FFF8DD736AAD7993F72B9C2(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_DADA7A7D495CBAF7ADF3A78EBA6E652F(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_DAFB8BC4489006D20992ABB70BA1D250(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_DE21E4304E2693E1A58CA28A0A64E72D(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_F42ABE254396B77AD17DE1ABC866EFF3(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnBlendOut_FFB32A8F48D0975F570DA09389BD4A3B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_17A497444F3BEC2B2B67828FAC0B32E5(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_534F20E647F78EEB3CD1C2AAA2D05E61(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_705D330B4FC1BC0332149B8838E7AC4B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_798527D3406C4ABECF991E9A45425011(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_BF1F84864FFF8DD736AAD7993F72B9C2(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_DADA7A7D495CBAF7ADF3A78EBA6E652F(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_DAFB8BC4489006D20992ABB70BA1D250(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_DE21E4304E2693E1A58CA28A0A64E72D(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_F42ABE254396B77AD17DE1ABC866EFF3(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnCompleted_FFB32A8F48D0975F570DA09389BD4A3B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_17A497444F3BEC2B2B67828FAC0B32E5(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_534F20E647F78EEB3CD1C2AAA2D05E61(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_705D330B4FC1BC0332149B8838E7AC4B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_798527D3406C4ABECF991E9A45425011(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_BF1F84864FFF8DD736AAD7993F72B9C2(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_DADA7A7D495CBAF7ADF3A78EBA6E652F(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_DAFB8BC4489006D20992ABB70BA1D250(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_DE21E4304E2693E1A58CA28A0A64E72D(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_F42ABE254396B77AD17DE1ABC866EFF3(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnInterrupted_FFB32A8F48D0975F570DA09389BD4A3B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_17A497444F3BEC2B2B67828FAC0B32E5(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_534F20E647F78EEB3CD1C2AAA2D05E61(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_705D330B4FC1BC0332149B8838E7AC4B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_798527D3406C4ABECF991E9A45425011(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_BF1F84864FFF8DD736AAD7993F72B9C2(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_DADA7A7D495CBAF7ADF3A78EBA6E652F(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_DAFB8BC4489006D20992ABB70BA1D250(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_DE21E4304E2693E1A58CA28A0A64E72D(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_F42ABE254396B77AD17DE1ABC866EFF3(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyBegin_FFB32A8F48D0975F570DA09389BD4A3B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_17A497444F3BEC2B2B67828FAC0B32E5(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_534F20E647F78EEB3CD1C2AAA2D05E61(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_705D330B4FC1BC0332149B8838E7AC4B(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_798527D3406C4ABECF991E9A45425011(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_BF1F84864FFF8DD736AAD7993F72B9C2(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_DADA7A7D495CBAF7ADF3A78EBA6E652F(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_DAFB8BC4489006D20992ABB70BA1D250(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_DE21E4304E2693E1A58CA28A0A64E72D(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_F42ABE254396B77AD17DE1ABC866EFF3(NotifyName) end

---@param NotifyName FName
function AFlyingRobot_BP_C:OnNotifyEnd_FFB32A8F48D0975F570DA09389BD4A3B(NotifyName) end

function AFlyingRobot_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFlyingRobot_BP_C:ReceiveTick(DeltaSeconds) end

---@param Range float
function AFlyingRobot_BP_C:SpawnBulletFX(Range) end

function AFlyingRobot_BP_C:Stagger() end

function AFlyingRobot_BP_C:StartFireBurst() end

function AFlyingRobot_BP_C:TickBehaviour() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AFlyingRobot_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AFlyingRobot_BP_C:UpdateTargetLoc() end

function AFlyingRobot_BP_C:UserConstructionScript() end

function AFlyingRobot_BP_C:WrapUpShootingFlags() end

---@param CanSeePlayer boolean
AFlyingRobot_BP_C['Can See Target Player'] = function(self, CanSeePlayer) end

AFlyingRobot_BP_C['Update Rotation'] = function(self) end
