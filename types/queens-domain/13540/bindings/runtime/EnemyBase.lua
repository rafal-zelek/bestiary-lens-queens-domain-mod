---@meta

---@class AEnemyBase_C : AFS_EnemyCharacterBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HomingTarget USceneComponent
---@field EnemyLineOfSight UEnemyLineOfSightComponent
---@field PassiveWaterFX UNiagaraComponent
---@field ActorUROManager UActorUROManager
---@field ViewPoint USceneComponent
---@field HitBox USphereComponent
---@field PassiveAudio UAudioComponent
---@field Timeline_6__Direction_0BD6DD034ADA04D00DB342A9ADD9CC83 ETimelineDirection::Type
---@field Timeline_6 UTimelineComponent
---@field Timeline_5_NewTrack_0_F514A9D44380B2DDF06BC29F4C4C264B float
---@field Timeline_5__Direction_F514A9D44380B2DDF06BC29F4C4C264B ETimelineDirection::Type
---@field Timeline_5 UTimelineComponent
---@field Timeline_4_NewTrack_0_CDF75B3144DD874311DE6E9FB5BBB176 float
---@field Timeline_4__Direction_CDF75B3144DD874311DE6E9FB5BBB176 ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field Timeline_3_NewTrack_0_A5278DB547EDADCB584A309E1C4E5D6B float
---@field Timeline_3__Direction_A5278DB547EDADCB584A309E1C4E5D6B ETimelineDirection::Type
---@field Timeline_3 UTimelineComponent
---@field Timeline_2_BallColor_0EBFECE849F4DEC179726AAF3A2B0179 FLinearColor
---@field Timeline_2__Direction_0EBFECE849F4DEC179726AAF3A2B0179 ETimelineDirection::Type
---@field Timeline_2 UTimelineComponent
---@field Timeline_1_NewTrack_0_A3901F874D820421519B399DDF59B46A float
---@field Timeline_1__Direction_A3901F874D820421519B399DDF59B46A ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field DieFade_Fade_A47B07F64155E49D9719288102FBE0EB float
---@field DieFade__Direction_A47B07F64155E49D9719288102FBE0EB ETimelineDirection::Type
---@field DieFade UTimelineComponent
---@field PoisonFX_NewTrack_0_2F6F06CA447EC02250758580CB009095 float
---@field PoisonFX__Direction_2F6F06CA447EC02250758580CB009095 ETimelineDirection::Type
---@field PoisonFX UTimelineComponent
---@field DoJumpArc_JumpArc_E35048504EC671A39DE29FAF3B8B8CF2 float
---@field DoJumpArc__Direction_E35048504EC671A39DE29FAF3B8B8CF2 ETimelineDirection::Type
---@field DoJumpArc UTimelineComponent
---@field Timeline_0_BallColor_D892C89B405C05EE3BC3EDAE978ACCFE FLinearColor
---@field Timeline_0__Direction_D892C89B405C05EE3BC3EDAE978ACCFE ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field AggroTimer float
---@field AggroRange float
---@field TargetPlayer AFS_PlayerChar_C
---@field HP float
---@field AnimateCharacterInBPEditor boolean
---@field Data UEnemyData_C
---@field UseTriggerReactionAttackLogic boolean
---@field AutoRunAttackActionsWhenAvailable boolean
---@field AllowAttacksWhileFalling boolean
---@field DefaultMoveMode EMovementMode
---@field DisableRotation boolean
---@field MoveForwardDotAngle float
---@field WalkMoveSpeedMult float
---@field WanderRadius float
---@field ['Re-WanderDelay'] float
---@field ChaseCheckFrequency float
---@field StartingTransform FTransform
---@field AggroSensitivityRandomness float
---@field SightCheckHeightOffset float
---@field StunFX UNiagaraComponent
---@field CharFXComps TArray<UMeshComponent>
---@field Poisoned boolean
---@field ActiveMeleeHitBox boolean
---@field SelectedAttackConfig int32
---@field AlreadyHit boolean
---@field ChaseTriggerPathLength float
---@field JumpPath TArray<FVector>
---@field AttackFacingPercent float
---@field PoisonCharFX UNiagaraComponent
---@field DamageImmunitySound USoundBase
---@field BonusDamageVFX UNiagaraSystem
---@field BonusDamageSFX USoundBase
---@field ResistedDamageSFX USoundBase
---@field ResistedDamageVFX UNiagaraSystem
---@field TookDamageSFX USoundBase
---@field EnemySpecificDamageVFX UNiagaraSystem
---@field DeathMontage UAnimMontage
---@field DeathEmitter UParticleSystem
---@field DeathSystem UNiagaraSystem
---@field DeathMaterial UMaterialInterface
---@field CurrentFogAlphaDA UENVControlData_C
---@field TransitionStartFogStartDistance float
---@field TransitionStartFogFadeRange float
---@field TransitionStartFogColor FLinearColor
---@field CurrentFogFadeRange float
---@field CurrentFogColor FLinearColor
---@field CurrentFogStartDistance float
---@field CurrentTransitionStartTime float
---@field CurrentTransitionDuration float
---@field DeathSound USoundBase
---@field DeathSoundAttachPoint FName
---@field AggroBuildup float
---@field AggroHeight float
---@field LastAggroUpdateDuration float
---@field SeenPlayerRange float
---@field HomeLocation FTransform
---@field DieFadeDuration float
---@field InitialBehaviourMode EnemyBehaviourMode::Type
---@field CurrentTrapMode EnemyBehaviourMode::Type
---@field InTrapMode boolean
---@field ActiveHitbox USphereComponent
---@field WaterSloshDelayTime float
---@field LastWaterHit FHitResult
---@field InWater boolean
---@field OwningSpawner AEnemySpawner_C
---@field AttackWeights TArray<float>
---@field OnMagicFire boolean
---@field MagicFireCharFX UNiagaraComponent
---@field MagicFireDamagePool float
---@field MagicFireProgress float
---@field MagicFireTickBuildup float
---@field DiseaseEffectApplied boolean
---@field DiseaseCharFX UNiagaraComponent
---@field DiseaseDamageDebuff float
---@field ReturningToSpawnerDueToPartialPathForTooLong boolean
---@field HasPlayerlos boolean
---@field HomingTargetAttachSocket FName
---@field StaggerStacks float
---@field TempEnemyInstance boolean
---@field TookDamage FEnemyBase_CTookDamage
---@field CharacterPFXScale float
---@field FallbackAttackAnim UAnimMontage
---@field StaggerAnim UAnimMontage
---@field LandingAnim UAnimMontage
---@field OverrideItemDrop boolean
---@field ItemDropOverride FItemDrop
---@field BlockChase boolean
---@field LastInputVector FVector
---@field LastStuckPosCheck FVector
---@field StuckTriedCircling boolean
---@field CirclingIsCheckingForRepath boolean
---@field FogUpdated FEnemyBase_CFogUpdated
---@field BestiaryInstance boolean
---@field CurrentWanderTarget FVector
---@field CrownMode boolean
---@field Paused boolean
---@field HeavyEffectApplied boolean
---@field HeavyCharFX UNiagaraComponent
---@field CurrentAttackIsUnblockable boolean
---@field WeakenApplied boolean
---@field WeakenDamageTakenIncrease float
---@field WeakenCharFX UNiagaraComponent
---@field ['Cached Target Facing Dot product'] float
---@field LocalViewpoint FTransform
---@field LocalWaterFX FVector
---@field HitboxNeedsReset boolean
---@field ActiveHitboxDamageMult float
---@field OnAggrod FEnemyBase_COnAggrod
---@field DropItemsWithGravity boolean
---@field LargestAttackRange float
---@field CirclingDir boolean
---@field BigNutCharFX UNiagaraComponent
---@field CurrentHitboxStatusChanceOverride float
---@field RemainingPoisonTicks_0 int32
---@field BigNutApplied boolean
---@field CurrentHitboxStatusOverride EEnemyStatusType
---@field ItemDrop_GravityFallExtraForce FVector
---@field ParalysisShouldAffectTimeDilation boolean
---@field CurrentTurnSpeedMultiplier float
---@field AnyAttackHasAngleRestrictionOverride boolean
---@field ['Hitbox Tag'] FName
---@field ActiveTaggedHitboxes TArray<USphereComponent>
---@field StuckPathCheckPeriod float
---@field DamageNoiseAttachBone FName
---@field FogHasLastTicked boolean
---@field LastHitStaggerDamage float
---@field WanderSnapHome boolean
---@field DamageAggroTime boolean
---@field WanderQuerySize FVector
---@field WaterTraceBonusDepth float
---@field ParalysisIsBlockingActions boolean
---@field StaggerIsBlockingActions boolean
---@field AlwaysTickPose boolean
---@field ['Hitboxes by Tag'] boolean
---@field TargetRotationOffsetDirection boolean
---@field BigNutDebuffDropChanceMod float
---@field AllowChaseWhileAttacking boolean
---@field DisableAttackLOSRequirement boolean
---@field DeathIsSuspended boolean
---@field WaterPhysmat UPhysicalMaterial
---@field SkipXPReward boolean
---@field DoPotshotOnHit boolean
---@field PotshotAttackIndex int32
---@field PotshotIgnoresRecovery boolean
---@field EnableExplicitPotshotEvent boolean
---@field ParaCache int32
---@field ForceGrantOwnData boolean
---@field PreventGiveUpChase boolean
local AEnemyBase_C = {}

function AEnemyBase_C:ActivateEnemyAI() end

---@param Damaged boolean
function AEnemyBase_C:ActivateTrap(Damaged) end

---@param IncomingDamage FFB_DamageAttributeSet
---@param Immune_To_Damage boolean
function AEnemyBase_C:AggroFromHit(IncomingDamage, Immune_To_Damage) end

function AEnemyBase_C:AggroUpdate() end

function AEnemyBase_C:Aggrod() end

function AEnemyBase_C:AnythingIsBlockignAI() end

---@param Str float
function AEnemyBase_C:ApplyBigNutEffect(Str) end

---@param Damage FFB_DamageAttributeSet
---@param OutDamage FFB_DamageAttributeSet
function AEnemyBase_C:ApplyDamageTests(Damage, OutDamage) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AEnemyBase_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param Duration float
function AEnemyBase_C:ApplyDisease(Duration) end

---@param Duration float
function AEnemyBase_C:ApplyHeavy(Duration) end

---@param Damage float
function AEnemyBase_C:ApplyMagicFire(Damage) end

---@param Amt float
function AEnemyBase_C:ApplyPoisonDamageTick(Amt) end

function AEnemyBase_C:ApplyPushbackOnHit() end

---@param Duration float
function AEnemyBase_C:ApplyWeaken(Duration) end

function AEnemyBase_C:AssociateWithSpawner() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AEnemyBase_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Move FVector
function AEnemyBase_C:BP_DoRootMotionMove(Move) end

function AEnemyBase_C:BP_EndCurrentAttackState() end

---@param AttackState int32
function AEnemyBase_C:BP_StartAttackState(AttackState) end

function AEnemyBase_C:BuildAttackWeights() end

function AEnemyBase_C:CacheAndInitializeData() end

function AEnemyBase_C:CacheCharFXComps() end

function AEnemyBase_C:CacheParaRootMotionState() end

---@param AppliedHPDamage float
---@param DamageEvent FFB_DamageAttributeSet
---@param EnemyWasWeakToDamage boolean
---@param EnemyWasResistantToDamage boolean
function AEnemyBase_C:CalculateAppliedStaggers(AppliedHPDamage, DamageEvent, EnemyWasWeakToDamage, EnemyWasResistantToDamage) end

---@param Valid_Target_was_Calculated boolean
---@param Target FVector
function AEnemyBase_C:CalculateWanderTarget(Valid_Target_was_Calculated, Target) end

function AEnemyBase_C:CanPossiblyAttack() end

function AEnemyBase_C:CancelAllStatusEffects() end

function AEnemyBase_C:CancelAllStatusFX() end

function AEnemyBase_C:CancelChase() end

function AEnemyBase_C:CancelCircling() end

function AEnemyBase_C:CancelHeavyFX() end

function AEnemyBase_C:CancelWeakenFX() end

function AEnemyBase_C:ChaseCheckLoop() end

function AEnemyBase_C:CheckChase() end

function AEnemyBase_C:CheckForStuckPath() end

---@param HasPlayerlos boolean
function AEnemyBase_C:CheckLOSFlagsForAttack(HasPlayerlos) end

function AEnemyBase_C:ContinueWandering() end

---@param ReceivedHPDamage float
function AEnemyBase_C:DamageHP(ReceivedHPDamage) end

---@param Damage FFB_DamageAttributeSet
---@param Hit FHitResult
---@param Multiplier float
---@param Resisted boolean
---@param Immune boolean
---@param BonusDamage boolean
function AEnemyBase_C:DetermineTakenDamageMultiplier(Damage, Hit, Multiplier, Resisted, Immune, BonusDamage) end

function AEnemyBase_C:DieAnim() end

function AEnemyBase_C:DieFade__FinishedFunc() end

function AEnemyBase_C:DieFade__UpdateFunc() end

---@param Damage FFB_DamageAttributeSet
function AEnemyBase_C:DoAlertRadius(Damage) end

---@param FXLoc FVector
function AEnemyBase_C:DoCustomDamagedFX(FXLoc) end

---@param HitboxesByTag boolean
---@param HitboxTag FName
---@param Unblockable boolean
---@param HitBox USphereComponent
function AEnemyBase_C:DoDefaultAttack(HitboxesByTag, HitboxTag, Unblockable, HitBox) end

function AEnemyBase_C:DoDieFade() end

---@param Immune boolean
---@param Weak boolean
---@param Resist boolean
function AEnemyBase_C:DoHitRumble(Immune, Weak, Resist) end

---@param Path TArray<FVector>
---@param Reverse boolean
---@param Length float
function AEnemyBase_C:DoJump(Path, Reverse, Length) end

function AEnemyBase_C:DoJumpArc__FinishedFunc() end

function AEnemyBase_C:DoJumpArc__UpdateFunc() end

function AEnemyBase_C:DoSpawnerHeartbeat() end

function AEnemyBase_C:DoTriggerAIAttackSelection() end

---@param OutHit FHitResult
function AEnemyBase_C:DoWaterCheckTrace(OutHit) end

---@param Allow_Multi_Drop boolean
---@param Force boolean
function AEnemyBase_C:DropItem(Allow_Multi_Drop, Force) end

function AEnemyBase_C:EndBigNutFX() end

function AEnemyBase_C:EndDisease() end

function AEnemyBase_C:EndDiseaseFX() end

function AEnemyBase_C:EndHeavy() end

function AEnemyBase_C:EndMagicFireFX() end

function AEnemyBase_C:EndParalysis() end

function AEnemyBase_C:EndPoison() end

function AEnemyBase_C:EndPoisonFX() end

function AEnemyBase_C:EndWeaken() end

---@param NewParam TSoftObjectPtr<UEnemyData_C>
function AEnemyBase_C:Enemy_BindTookDamage(NewParam) end

---@param Is_A_Boss boolean
---@param Group__optional_ UEnemyData_C
---@param Is_Part_Of_Boss_Encounter boolean
function AEnemyBase_C:Enemy_GetBossInfo(Is_A_Boss, Group__optional_, Is_Part_Of_Boss_Encounter) end

---@param Data TSoftObjectPtr<UEnemyData_C>
function AEnemyBase_C:Enemy_GetEnemyData(Data) end

---@param Current float
---@param Max float
function AEnemyBase_C:Enemy_GetHP(Current, Max) end

---@param Dead boolean
---@param SuspendedDeath boolean
function AEnemyBase_C:Enemy_GetIsDead(Dead, SuspendedDeath) end

---@param Hit FHitResult
---@param HitCannotPierce boolean
function AEnemyBase_C:Enemy_IsNotPiercable(Hit, HitCannotPierce) end

---@param Is boolean
function AEnemyBase_C:Enemy_IsPartOfBossEncounter(Is) end

---@param Mode EnemyBehaviourMode::Type
function AEnemyBase_C:EnterTrapMode(Mode) end

---@param Sensitivity float
---@param SawTarget boolean
function AEnemyBase_C:EvaluateAwarenessCones(Sensitivity, SawTarget) end

---@param EntryPoint int32
function AEnemyBase_C:ExecuteUbergraph_EnemyBase(EntryPoint) end

---@param Color FLinearColor
---@param Start_Dist float
---@param FadeRange float
function AEnemyBase_C:FogUpdated__DelegateSignature(Color, Start_Dist, FadeRange) end

function AEnemyBase_C:ForceAggroupdate() end

function AEnemyBase_C:ForceCheckInWater() end

---@param Key FName
function AEnemyBase_C:ForceExecuteAttack(Key) end

function AEnemyBase_C:ForceUnaggro() end

function AEnemyBase_C:ForcedPotshot() end

function AEnemyBase_C:GetAIDefaultAttackFacingPercent() end

function AEnemyBase_C:GetAIForwardVector() end

---@param AggroDecreaseRate float
function AEnemyBase_C:GetAggroDecreaseRate(AggroDecreaseRate) end

function AEnemyBase_C:GetAggroHeight() end

---@param AggroRange float
function AEnemyBase_C:GetAggroRange(AggroRange) end

---@param AggroSensitivity float
function AEnemyBase_C:GetAggroSensitivity(AggroSensitivity) end

---@param Short float
---@param Long float
---@param Long_Chance float
function AEnemyBase_C:GetAttackCooldown(Short, Long, Long_Chance) end

---@param Key FName
---@param ExtraMult float
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function AEnemyBase_C:GetAttackDamageForAttackByKey(Key, ExtraMult, FB_DamageAttributeSet) end

---@param ExtraMult float
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function AEnemyBase_C:GetAttackDamageForSelectedAttack(ExtraMult, FB_DamageAttributeSet) end

---@param Key FName
---@param Value int32
function AEnemyBase_C:GetAttackIndexFromKey(Key, Value) end

---@param Key int32
---@param Value FName
function AEnemyBase_C:GetAttackKeyFromIndex(Key, Value) end

---@param Range float
function AEnemyBase_C:GetAttackRange(Range) end

---@param AggroRange float
function AEnemyBase_C:GetAwarenessConeMaxRange(AggroRange) end

---@param TargetPlayer AActor
function AEnemyBase_C:GetChaseTarget(TargetPlayer) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AEnemyBase_C:GetCurrentFogDAs(Alpha, Beta) end

---@param WalkMoveSpeedMult float
function AEnemyBase_C:GetCurrentMoveInputSpeedMult(WalkMoveSpeedMult) end

---@param Config FFS_EnemyAttackConfig
---@param Valid boolean
function AEnemyBase_C:GetCurrentlySelectedAttack(Config, Valid) end

---@param Montage UAnimMontage
function AEnemyBase_C:GetCurrentlySelectedAttackMontage(Montage) end

---@param Name FName
---@param Value float
---@param Valid boolean
function AEnemyBase_C:GetCustomData(Name, Value, Valid) end

---@param Hit FHitResult
---@param BluntResistance EnemyResistance::Type
---@param PierceResistance EnemyResistance::Type
---@param SlashResistance EnemyResistance::Type
function AEnemyBase_C:GetDamageResistancesForHit(Hit, BluntResistance, PierceResistance, SlashResistance) end

function AEnemyBase_C:GetData_BP() end

function AEnemyBase_C:GetDefaultImpactPoint() end

---@param _3DDist float
---@param _2DDist float
function AEnemyBase_C:GetDistanceToPlayer(_3DDist, _2DDist) end

function AEnemyBase_C:GetDropLocation() end

---@param ShouldOverride boolean
---@param Location FVector
function AEnemyBase_C:GetDropoverrideSettings(ShouldOverride, Location) end

function AEnemyBase_C:GetForwardFacingVectorForAI() end

---@param HP float
function AEnemyBase_C:GetHP(HP) end

function AEnemyBase_C:GetItemDrop() end

---@param bPosOverridden boolean
function AEnemyBase_C:GetLOSCheckPos(bPosOverridden) end

---@param Range float
---@param Height float
function AEnemyBase_C:GetLOSParams(Range, Height) end

---@param Loc FVector
function AEnemyBase_C:GetLastSeenPlayerLoc(Loc) end

---@param HP float
function AEnemyBase_C:GetMaxHP(HP) end

function AEnemyBase_C:GetMaxPoisonTicks() end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AEnemyBase_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function AEnemyBase_C:GetPlayerFacingDot() end

---@param Dot float
function AEnemyBase_C:GetPlayerFacingDot_Pure(Dot) end

function AEnemyBase_C:GetPoisonResistance() end

---@param StaggerAnim UAnimMontage
function AEnemyBase_C:GetStaggerMontage(StaggerAnim) end

---@param AttackIndex int32
---@param Tags FGameplayTagContainer
function AEnemyBase_C:GetStatusEffectTags(AttackIndex, Tags) end

---@param AttackIndex int32
---@param StatusType EEnemyStatusType
---@param Chance float
function AEnemyBase_C:GetStatusEffectToApply(AttackIndex, StatusType, Chance) end

---@param Type EEnemyStatusType
---@param Tag FGameplayTagContainer
function AEnemyBase_C:GetStatusTagFromType(Type, Tag) end

---@param Range float
function AEnemyBase_C:GetStopFollowRange(Range) end

function AEnemyBase_C:GetTargetPlayer() end

---@param TookDamageSFX USoundBase
function AEnemyBase_C:GetTookDamageSFX(TookDamageSFX) end

function AEnemyBase_C:GetXPReward() end

---@param SensitivityMult float
function AEnemyBase_C:HandleAggroBuildupAccumulation(SensitivityMult) end

function AEnemyBase_C:InitDeathFade() end

---@param InputPin UNavigationPath
function AEnemyBase_C:IsValidPath(InputPin) end

---@param RelativeWaterHeight float
function AEnemyBase_C:IterateWaterSlosh(RelativeWaterHeight) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AEnemyBase_C:Kill(NoRewards, SupressDeathSound) end

---@param Point FVector
---@param HorizontalForce float
---@param UpwardForce float
function AEnemyBase_C:LaunchPlayerAwayFromPoint(Point, HorizontalForce, UpwardForce) end

function AEnemyBase_C:MoveTowardsPlayer() end

function AEnemyBase_C:OnAggrod__DelegateSignature() end

---@param NotifyName FName
function AEnemyBase_C:OnBlendOut_05BCBCE8497C6A35AA52778515B26C8C(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnBlendOut_5070C1AF4DDEC172AF653DA111736464(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnBlendOut_B3FEDE6542CCA7380416F7A9211C9BBD(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnBlendOut_C70E8E83482FE805F27930A410B20137(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnBlendOut_F8249D514EB409ED5D3A2D93085DEAC3(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnCompleted_05BCBCE8497C6A35AA52778515B26C8C(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnCompleted_5070C1AF4DDEC172AF653DA111736464(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnCompleted_B3FEDE6542CCA7380416F7A9211C9BBD(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnCompleted_C70E8E83482FE805F27930A410B20137(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnCompleted_F8249D514EB409ED5D3A2D93085DEAC3(NotifyName) end

---@param MovementResult EPathFollowingResult::Type
function AEnemyBase_C:OnFail_1FF73B7C41DDAAE065B667ACCB993060(MovementResult) end

---@param MovementResult EPathFollowingResult::Type
function AEnemyBase_C:OnFail_8AB08BA340E6FB945D8D30B33465A5BA(MovementResult) end

---@param NotifyName FName
function AEnemyBase_C:OnInterrupted_05BCBCE8497C6A35AA52778515B26C8C(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnInterrupted_5070C1AF4DDEC172AF653DA111736464(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnInterrupted_B3FEDE6542CCA7380416F7A9211C9BBD(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnInterrupted_C70E8E83482FE805F27930A410B20137(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnInterrupted_F8249D514EB409ED5D3A2D93085DEAC3(NotifyName) end

---@param Hit FHitResult
function AEnemyBase_C:OnLanded(Hit) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyBegin_05BCBCE8497C6A35AA52778515B26C8C(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyBegin_5070C1AF4DDEC172AF653DA111736464(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyBegin_B3FEDE6542CCA7380416F7A9211C9BBD(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyBegin_C70E8E83482FE805F27930A410B20137(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyBegin_F8249D514EB409ED5D3A2D93085DEAC3(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyEnd_05BCBCE8497C6A35AA52778515B26C8C(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyEnd_5070C1AF4DDEC172AF653DA111736464(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyEnd_B3FEDE6542CCA7380416F7A9211C9BBD(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyEnd_C70E8E83482FE805F27930A410B20137(NotifyName) end

---@param NotifyName FName
function AEnemyBase_C:OnNotifyEnd_F8249D514EB409ED5D3A2D93085DEAC3(NotifyName) end

---@param MovementResult EPathFollowingResult::Type
function AEnemyBase_C:OnSuccess_1FF73B7C41DDAAE065B667ACCB993060(MovementResult) end

---@param MovementResult EPathFollowingResult::Type
function AEnemyBase_C:OnSuccess_8AB08BA340E6FB945D8D30B33465A5BA(MovementResult) end

---@param Duration float
function AEnemyBase_C:Paralyze(Duration) end

function AEnemyBase_C:PathEnded() end

function AEnemyBase_C:PlayDeathSound() end

function AEnemyBase_C:PoisonFX__FinishedFunc() end

function AEnemyBase_C:PoisonFX__UpdateFunc() end

function AEnemyBase_C:PostDeathDestroy() end

function AEnemyBase_C:PotshotCheck() end

function AEnemyBase_C:RandomizeTargetOffsetDirection() end

function AEnemyBase_C:ReceiveBeginPlay() end

function AEnemyBase_C:ReceiveDestroyed() end

---@param EndPlayReason EEndPlayReason::Type
function AEnemyBase_C:ReceiveEndPlay(EndPlayReason) end

---@param DeltaSeconds float
function AEnemyBase_C:ReceiveTick(DeltaSeconds) end

function AEnemyBase_C:RecoveryTimeEnded() end

function AEnemyBase_C:RefreshWaterPassiveFX() end

function AEnemyBase_C:RegisterKill() end

---@param Input_Damage FFB_DamageAttributeSet
---@param Output_Damage FFB_DamageAttributeSet
---@param InputPin float
function AEnemyBase_C:ReportTookDamage(Input_Damage, Output_Damage, InputPin) end

function AEnemyBase_C:ResetStaggerDegen() end

function AEnemyBase_C:ResetStuckPathCheck() end

---@param Hit FHitResult
function AEnemyBase_C:ResistedDamageFlash(Hit) end

function AEnemyBase_C:Respawn() end

function AEnemyBase_C:RestoreParaRootExtraction() end

function AEnemyBase_C:SelectNextAttack() end

---@param RelativeWaterHeight float
function AEnemyBase_C:SelectWaterSound(RelativeWaterHeight) end

---@param AggroRange float
function AEnemyBase_C:SetAggroRange(AggroRange) end

---@param DA UENVControlData_C
function AEnemyBase_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AEnemyBase_C:SetBetaFogDA(DA) end

function AEnemyBase_C:SetFogValuesToTargetInstantly() end

---@param Paused boolean
function AEnemyBase_C:SetPauseTimeDilation(Paused) end

---@param Data UENVControlData_C
---@param TransitionDuration float
function AEnemyBase_C:SetTargetFogData(Data, TransitionDuration) end

---@param Mult float
---@param Resisted boolean
---@param Immune boolean
---@param Bonus boolean
---@param Incoming_Damage FFB_DamageAttributeSet
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function AEnemyBase_C:SetUpAppliedDamage(Mult, Resisted, Immune, Bonus, Incoming_Damage, FB_DamageAttributeSet) end

---@param Object UObject
---@param Object2 UObject
function AEnemyBase_C:SetUpDropFog(Object, Object2) end

function AEnemyBase_C:SetUpPausing() end

function AEnemyBase_C:SetWalkSpeedToDefault() end

function AEnemyBase_C:ShouldMoveTowardPlayer_Base() end

---@param Tags FGameplayTagContainer
function AEnemyBase_C:ShouldNotBeTargetedByHoming(Tags) end

function AEnemyBase_C:ShouldSkipXPReward() end

function AEnemyBase_C:SnapMeshToBottomOfCapsule() end

function AEnemyBase_C:Stagger() end

function AEnemyBase_C:StaggerDegenLoop() end

function AEnemyBase_C:StaggerEnded() end

function AEnemyBase_C:StartBigNutFX() end

function AEnemyBase_C:StartChaseCheckLoop() end

---@param Duration float
---@param WaitForRepath boolean
function AEnemyBase_C:StartCircling(Duration, WaitForRepath) end

function AEnemyBase_C:StartDiseaseFX() end

function AEnemyBase_C:StartHeavyFX() end

function AEnemyBase_C:StartMagicFireFX() end

function AEnemyBase_C:StartPoisonFX() end

function AEnemyBase_C:StartStagger() end

function AEnemyBase_C:StartStaggerDegenLoop() end

function AEnemyBase_C:StartWandering() end

function AEnemyBase_C:StartWeakenFX() end

function AEnemyBase_C:StopAllMovement() end

function AEnemyBase_C:StopWandering() end

function AEnemyBase_C:StuckLogic() end

function AEnemyBase_C:TickBehaviour() end

---@param Force boolean
function AEnemyBase_C:TickFogTransitions(Force) end

function AEnemyBase_C:TickHitboxes() end

---@param InputPin USphereComponent
---@param PositionOverride FVector
---@param UseOverride boolean
---@param Hit boolean
function AEnemyBase_C:TickIndividualHitbox(InputPin, PositionOverride, UseOverride, Hit) end

function AEnemyBase_C:TickMagicFire() end

function AEnemyBase_C:Timeline_0__FinishedFunc() end

function AEnemyBase_C:Timeline_0__UpdateFunc() end

function AEnemyBase_C:Timeline_1__FinishedFunc() end

function AEnemyBase_C:Timeline_1__UpdateFunc() end

function AEnemyBase_C:Timeline_2__FinishedFunc() end

function AEnemyBase_C:Timeline_2__UpdateFunc() end

function AEnemyBase_C:Timeline_3__FinishedFunc() end

function AEnemyBase_C:Timeline_3__UpdateFunc() end

function AEnemyBase_C:Timeline_4__FinishedFunc() end

function AEnemyBase_C:Timeline_4__UpdateFunc() end

function AEnemyBase_C:Timeline_5__FinishedFunc() end

function AEnemyBase_C:Timeline_5__UpdateFunc() end

function AEnemyBase_C:Timeline_6__FinishedFunc() end

function AEnemyBase_C:Timeline_6__UpdateFunc() end

---@param Hit FHitResult
function AEnemyBase_C:TookDamageFlash(Hit) end

---@param Enemy AEnemyBase_C
---@param Damage float
---@param Tags FGameplayTagContainer
---@param DataTags TMap<FGameplayTag, float>
function AEnemyBase_C:TookDamage__DelegateSignature(Enemy, Damage, Tags, DataTags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AEnemyBase_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AEnemyBase_C:TryUnstickJump() end

function AEnemyBase_C:UnAggrod() end

function AEnemyBase_C:UpdateCanSeePlayer() end

---@param Fade float
function AEnemyBase_C:UpdateDeathFade(Fade) end

---@param ParameterValue float
function AEnemyBase_C:UpdateDiseaseFade(ParameterValue) end

function AEnemyBase_C:UpdateFogDAValues() end

---@param ParameterValue float
function AEnemyBase_C:UpdateHeavyFade(ParameterValue) end

---@param ParameterValue float
function AEnemyBase_C:UpdateMagicFireFade(ParameterValue) end

---@param NewLocation FVector
function AEnemyBase_C:UpdatePassiveWaterFXLocation(NewLocation) end

---@param ParameterValue float
function AEnemyBase_C:UpdatePoisonFade(ParameterValue) end

---@param ParameterValue float
function AEnemyBase_C:UpdateWeakenFade(ParameterValue) end

function AEnemyBase_C:UserConstructionScript() end

---@param HitBox USphereComponent
---@param Unblockable boolean
---@param Motion_Value float
---@param Status_Override EEnemyStatusType
---@param Status_Override_Chance float
---@param HitboxesByTag boolean
---@param HitboxTag FName
AEnemyBase_C['Activate Hitbox Advanced'] = function(self, HitBox, Unblockable, Motion_Value, Status_Override, Status_Override_Chance, HitboxesByTag, HitboxTag) end

---@param HitBox USphereComponent
---@param Unblockable boolean
---@param HitboxesByTag boolean
---@param HitboxTag FName
AEnemyBase_C['Activate Hitbox Simple'] = function(self, HitBox, Unblockable, HitboxesByTag, HitboxTag) end

AEnemyBase_C['Cache Viewpoint'] = function(self) end

---@param CanSeePlayer boolean
AEnemyBase_C['Can See Target Player'] = function(self, CanSeePlayer) end

---@param Key FName
---@param bIgnoreWeight boolean
---@param Can_Use boolean
AEnemyBase_C['CanUseAttack(Key)'] = function(self, Key, bIgnoreWeight, Can_Use) end

---@param Selected_Attack int32
AEnemyBase_C['Conditional Select Attack'] = function(self, Selected_Attack) end

AEnemyBase_C['Configure Behaviour Mode'] = function(self) end

AEnemyBase_C['Deactivate Hitbox'] = function(self) end

---@param Damage float
AEnemyBase_C['Directly Apply Poison'] = function(self, Damage) end

---@param SkipCurrentAttackCD boolean
---@param Don_tSetAttackingFlag boolean
AEnemyBase_C['End Attack State'] = function(self, SkipCurrentAttackCD, Don_tSetAttackingFlag) end

AEnemyBase_C['Entered Water'] = function(self) end

AEnemyBase_C['Exited Water'] = function(self) end

AEnemyBase_C['Final FX Cleanup'] = function(self) end

AEnemyBase_C['Force Aggro'] = function(self) end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
AEnemyBase_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end

---@param BaseDamage float
AEnemyBase_C['Get Enemy Base Damage'] = function(self, BaseDamage) end

AEnemyBase_C['Init HP'] = function(self) end

AEnemyBase_C['Override Initial Nav Relevance'] = function(self) end

AEnemyBase_C['Recalculate Local Time Dilation'] = function(self) end

AEnemyBase_C['Should Move Towards Player'] = function(self) end

AEnemyBase_C['Spawn DeathParticles'] = function(self) end

AEnemyBase_C['Start Attack State'] = function(self) end

AEnemyBase_C['Tick Liquid Stuff'] = function(self) end

AEnemyBase_C['Update Fog'] = function(self) end

AEnemyBase_C['Update Rotation'] = function(self) end
