---@meta

---@class AJosamiLord_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OverheadSlashHitbox2 USphereComponent
---@field OverheadSlashHitbox1 USphereComponent
---@field OverheadSlashHitbox USphereComponent
---@field InteractCollision UBoxComponent
---@field SwordBuffFX UNiagaraComponent
---@field BuffFX UNiagaraComponent
---@field Phase2ExplodeHitbox USphereComponent
---@field RoarHitbox USphereComponent
---@field GunLaser UStaticMeshComponent
---@field Gun UStaticMeshComponent
---@field GunPreview UStaticMeshComponent
---@field GunAttachPoint USceneComponent
---@field SwordAttachPreview UStaticMeshComponent
---@field SwordAttachPoint USceneComponent
---@field LeftFootHitbox USphereComponent
---@field SwordHitbox_5 USphereComponent
---@field SwordHitbox_4 USphereComponent
---@field SwordHitbox_3 USphereComponent
---@field SwordHitbox_2 USphereComponent
---@field SwordHitbox_1 USphereComponent
---@field SwordHitbox_0 USphereComponent
---@field Sword UStaticMeshComponent
---@field MySpawner AJosamiLord_Spawner_C
---@field Running boolean
---@field HitPlayerDuringPush boolean
---@field SnapStartLoc FVector
---@field RunningAttackSideIsRight boolean
---@field ForceSnapRotationIsTowardCastle boolean
---@field Arena AJosamiLord_ArenaOrientationActor_C
---@field RunningAttackWrongSideBuildup float
---@field SnapTargetLoc FVector
---@field GunAimPoint FVector
---@field ActualLastSeenPlayerLoc FVector
---@field MassagedAimLocation FVector
---@field ConsecutiveGunMisses int32
---@field TotalShotsInThisGunMode int32
---@field DidHitPlayerDuringArenaClear boolean
---@field HasPlayerTarget boolean
---@field CurrentGunChargeSFX UAudioComponent
---@field HugeGunChargeFX UNiagaraComponent
---@field ArenaClearAttackActivations int32
---@field ActivePhaseIndex int32
---@field Roaring boolean
---@field RoarAOEFX UNiagaraComponent
---@field RoarFloorFX UNiagaraComponent
---@field CurrentRoarSound UAudioComponent
---@field NeedsToGun boolean
---@field StandaloneBoss boolean
---@field DummyNPC TSubclassOf<ANPC_Base_C>
---@field GunDeathMat UMaterialInterface
---@field SwordDeathMat UMaterialInterface
---@field SuperArmors boolean
---@field GunAimPointSTart FVector
local AJosamiLord_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AJosamiLord_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiLord_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AJosamiLord_BP_C:BossEnteredArena() end

function AJosamiLord_BP_C:CancelArenaClearAttack() end

function AJosamiLord_BP_C:CancelGunState() end

function AJosamiLord_BP_C:CancelNormalGunAttack() end

function AJosamiLord_BP_C:CancelRunningAttack() end

function AJosamiLord_BP_C:CancelSnapTarget() end

function AJosamiLord_BP_C:CancelStuff() end

function AJosamiLord_BP_C:CheckChase() end

function AJosamiLord_BP_C:CheckGunStateConditions() end

function AJosamiLord_BP_C:DOSpinRightSLash() end

function AJosamiLord_BP_C:DiagonalSlashes() end

function AJosamiLord_BP_C:DoArenaClearGunAttack() end

function AJosamiLord_BP_C:DoArenaClearHit() end

function AJosamiLord_BP_C:DoEndGunModeJumpSlash() end

function AJosamiLord_BP_C:DoJumpOverAttack() end

function AJosamiLord_BP_C:DoJumpSlamAttack() end

function AJosamiLord_BP_C:DoNormalGunAttack() end

function AJosamiLord_BP_C:DoPhaseTransition1() end

function AJosamiLord_BP_C:DoPhaseTransition2() end

function AJosamiLord_BP_C:DoPushAttack() end

function AJosamiLord_BP_C:DoRunningAttack() end

function AJosamiLord_BP_C:DoSlashAttacks() end

function AJosamiLord_BP_C:DoStandingSlam() end

function AJosamiLord_BP_C:EndChargeLaserNaturally() end

function AJosamiLord_BP_C:EndedDeathDialogue() end

function AJosamiLord_BP_C:EnterGunState() end

---@param EntryPoint int32
function AJosamiLord_BP_C:ExecuteUbergraph_JosamiLord_BP(EntryPoint) end

function AJosamiLord_BP_C:FireNormalLightningRound() end

function AJosamiLord_BP_C:Get2DUnitDirTowardPlayer() end

function AJosamiLord_BP_C:GetArenaRight() end

---@param CircleRadius float
---@param StartPoint FVector
---@param PointOnCircle FVector
function AJosamiLord_BP_C:GetClosestPointOnRelativeCircle(CircleRadius, StartPoint, PointOnCircle) end

---@param Phase_Index int32
function AJosamiLord_BP_C:GetDesiredPhase(Phase_Index) end

---@param Dist float
function AJosamiLord_BP_C:GetDistToPlayerForwardOnly(Dist) end

---@param ArenaCenter AActor
---@param Distance float
function AJosamiLord_BP_C:GetDuoLoc(ArenaCenter, Distance) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AJosamiLord_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param bOverride boolean
---@param Location FVector
function AJosamiLord_BP_C:GetRotationTargetLocationOverride(bOverride, Location) end

---@param SideIsRight boolean
function AJosamiLord_BP_C:GetRunningAttackPlayerSide(SideIsRight) end

function AJosamiLord_BP_C:HitPlayerWithArenaClearFire() end

function AJosamiLord_BP_C:HitPlayerWithNormalGunfire() end

function AJosamiLord_BP_C:InitDeathFade() end

---@param PlayerInteracting AActor
function AJosamiLord_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiLord_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param Target FVector
function AJosamiLord_BP_C:LaunchPlayerToPoint(Target) end

function AJosamiLord_BP_C:MassageFailedAimLoc() end

---@param AttackIndex int32
---@param BaseWeight float
function AJosamiLord_BP_C:ModifyAttackWeight(AttackIndex, BaseWeight) end

function AJosamiLord_BP_C:MoveToSnapTarget() end

function AJosamiLord_BP_C:NonCastleJumpStartup() end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_2C8D7C004733DD5AC73EBF8F6CD91C4C(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_5154432843D91D67D02E78AF82E03A44(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_56B01DB04A4ADA39A83AE6ACB57CA554(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_679EEAD04A30CB95AD66FB98C5EC1DF4(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_74949FA449BCFD1B16A13E84DCCCC1DA(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_8166B79546226D7DDA4083B0C8A5A6EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_8DD0F65E4561487A0F48B2AF674A205D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_8DD0F65E4561487A0F48B2AF743478ED(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_8DD0F65E4561487A0F48B2AF92F54181(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_8DD0F65E4561487A0F48B2AFBB2844BE(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_8DD0F65E4561487A0F48B2AFC3DEC9EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_8DD0F65E4561487A0F48B2AFCC1E712D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_8DD0F65E4561487A0F48B2AFCE920B5D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_91201F044478F8A99A2D02A767218C48(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_9BC18CD44F95C7CB82F582A88F89EE83(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_C1B6178745EA1B0F1A608BB489A5D6BF(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_D608F94D4AFBA642FDF262A26AF59159(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9ABE6D390B(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_2C8D7C004733DD5AC73EBF8F6CD91C4C(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_5154432843D91D67D02E78AF82E03A44(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_56B01DB04A4ADA39A83AE6ACB57CA554(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_679EEAD04A30CB95AD66FB98C5EC1DF4(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_74949FA449BCFD1B16A13E84DCCCC1DA(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_8166B79546226D7DDA4083B0C8A5A6EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_8DD0F65E4561487A0F48B2AF674A205D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_8DD0F65E4561487A0F48B2AF743478ED(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_8DD0F65E4561487A0F48B2AF92F54181(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_8DD0F65E4561487A0F48B2AFBB2844BE(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_8DD0F65E4561487A0F48B2AFC3DEC9EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_8DD0F65E4561487A0F48B2AFCC1E712D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_8DD0F65E4561487A0F48B2AFCE920B5D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_91201F044478F8A99A2D02A767218C48(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_9BC18CD44F95C7CB82F582A88F89EE83(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_C1B6178745EA1B0F1A608BB489A5D6BF(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_D608F94D4AFBA642FDF262A26AF59159(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9ABE6D390B(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_2C8D7C004733DD5AC73EBF8F6CD91C4C(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_5154432843D91D67D02E78AF82E03A44(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_56B01DB04A4ADA39A83AE6ACB57CA554(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_679EEAD04A30CB95AD66FB98C5EC1DF4(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_74949FA449BCFD1B16A13E84DCCCC1DA(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_8166B79546226D7DDA4083B0C8A5A6EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_8DD0F65E4561487A0F48B2AF674A205D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_8DD0F65E4561487A0F48B2AF743478ED(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_8DD0F65E4561487A0F48B2AF92F54181(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_8DD0F65E4561487A0F48B2AFBB2844BE(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_8DD0F65E4561487A0F48B2AFC3DEC9EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_8DD0F65E4561487A0F48B2AFCC1E712D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_8DD0F65E4561487A0F48B2AFCE920B5D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_91201F044478F8A99A2D02A767218C48(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_9BC18CD44F95C7CB82F582A88F89EE83(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_C1B6178745EA1B0F1A608BB489A5D6BF(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_D608F94D4AFBA642FDF262A26AF59159(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9ABE6D390B(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_2C8D7C004733DD5AC73EBF8F6CD91C4C(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_5154432843D91D67D02E78AF82E03A44(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_56B01DB04A4ADA39A83AE6ACB57CA554(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_679EEAD04A30CB95AD66FB98C5EC1DF4(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_74949FA449BCFD1B16A13E84DCCCC1DA(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_8166B79546226D7DDA4083B0C8A5A6EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_8DD0F65E4561487A0F48B2AF674A205D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_8DD0F65E4561487A0F48B2AF743478ED(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_8DD0F65E4561487A0F48B2AF92F54181(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_8DD0F65E4561487A0F48B2AFBB2844BE(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_8DD0F65E4561487A0F48B2AFC3DEC9EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_8DD0F65E4561487A0F48B2AFCC1E712D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_8DD0F65E4561487A0F48B2AFCE920B5D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_91201F044478F8A99A2D02A767218C48(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_9BC18CD44F95C7CB82F582A88F89EE83(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_C1B6178745EA1B0F1A608BB489A5D6BF(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_D608F94D4AFBA642FDF262A26AF59159(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9ABE6D390B(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_2C8D7C004733DD5AC73EBF8F6CD91C4C(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_5154432843D91D67D02E78AF82E03A44(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_56B01DB04A4ADA39A83AE6ACB57CA554(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_679EEAD04A30CB95AD66FB98C5EC1DF4(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_74949FA449BCFD1B16A13E84DCCCC1DA(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_8166B79546226D7DDA4083B0C8A5A6EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_8DD0F65E4561487A0F48B2AF674A205D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_8DD0F65E4561487A0F48B2AF743478ED(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_8DD0F65E4561487A0F48B2AF92F54181(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_8DD0F65E4561487A0F48B2AFBB2844BE(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_8DD0F65E4561487A0F48B2AFC3DEC9EB(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_8DD0F65E4561487A0F48B2AFCC1E712D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_8DD0F65E4561487A0F48B2AFCE920B5D(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_91201F044478F8A99A2D02A767218C48(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_9BC18CD44F95C7CB82F582A88F89EE83(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_C1B6178745EA1B0F1A608BB489A5D6BF(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_D608F94D4AFBA642FDF262A26AF59159(NotifyName) end

---@param NotifyName FName
function AJosamiLord_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9ABE6D390B(NotifyName) end

---@param Duration float
function AJosamiLord_BP_C:Paralyze(Duration) end

function AJosamiLord_BP_C:ReceiveBeginPlay() end

function AJosamiLord_BP_C:ReceiveDestroyed() end

---@param FaceFarSide boolean
function AJosamiLord_BP_C:SetForceSnapRotationBasedOnFacing(FaceFarSide) end

function AJosamiLord_BP_C:SetGunJumpTargetPos() end

function AJosamiLord_BP_C:SetInitialGunAimPoint() end

function AJosamiLord_BP_C:SetSnapTargetForGunModeCancelJumpSlash() end

function AJosamiLord_BP_C:SnapGunToBack() end

function AJosamiLord_BP_C:SnapGunToHand() end

function AJosamiLord_BP_C:SnapStomp() end

function AJosamiLord_BP_C:SnapSwordToBack() end

function AJosamiLord_BP_C:SnapSwordToHand() end

function AJosamiLord_BP_C:SpawnGunshotPFX() end

---@param Input FFB_DamageAttributeSet
---@param SpreadDamage FFB_DamageAttributeSet
---@param LocalDamage FFB_DamageAttributeSet
function AJosamiLord_BP_C:SplitDamage(Input, SpreadDamage, LocalDamage) end

function AJosamiLord_BP_C:Stagger() end

function AJosamiLord_BP_C:StartArenaClearHitloop() end

function AJosamiLord_BP_C:StartGunshotsLogic() end

function AJosamiLord_BP_C:StartRunningState() end

function AJosamiLord_BP_C:StopRunning() end

---@param Fade float
function AJosamiLord_BP_C:UpdateDeathFade(Fade) end

function AJosamiLord_BP_C:fadeoutglow() end

---@param SkipCurrentAttackCD boolean
---@param Don_tSetAttackingFlag boolean
AJosamiLord_BP_C['End Attack State'] = function(self, SkipCurrentAttackCD, Don_tSetAttackingFlag) end

AJosamiLord_BP_C['End Roaring'] = function(self) end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
AJosamiLord_BP_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end

---@param BaseDamage float
AJosamiLord_BP_C['Get Enemy Base Damage'] = function(self, BaseDamage) end

AJosamiLord_BP_C['Should Move Towards Player'] = function(self) end

AJosamiLord_BP_C['Start Attack State'] = function(self) end

AJosamiLord_BP_C['Start Roaring'] = function(self) end

AJosamiLord_BP_C['Update Rotation'] = function(self) end
