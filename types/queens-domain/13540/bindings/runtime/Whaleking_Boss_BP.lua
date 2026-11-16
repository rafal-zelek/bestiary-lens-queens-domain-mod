---@meta

---@class AWhaleking_Boss_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
---@field Whaleking_Horn_Broken USkeletalMeshComponent
---@field LeftWaterFX UNiagaraComponent
---@field PhasingPoisonSpots4 USceneComponent
---@field PhasingPoisonSpots3 USceneComponent
---@field PhasingPoisonSpots2 USceneComponent
---@field PhasingPoisonSpots1 USceneComponent
---@field PhasingPoisonSpots USceneComponent
---@field Roar USphereComponent
---@field TailSlamHitbox USphereComponent
---@field TailSlapHitbox USphereComponent
---@field TailHitbox3 USphereComponent
---@field TailHitbox2 USphereComponent
---@field TailHitbox1 USphereComponent
---@field TurnTailHitbox USphereComponent
---@field BiteHitbox USphereComponent
---@field LeftFootImpactBox USphereComponent
---@field RightFootImpactBox USphereComponent
---@field RightFootHitbox USphereComponent
---@field LeftFootHitbox USphereComponent
---@field ChinHitbox USphereComponent
---@field HornMesh UStaticMeshComponent
---@field ThighWeakSpot_L UBoxComponent
---@field ThighWeakSpot_R UBoxComponent
---@field CalfWeakSpot_R UBoxComponent
---@field CalfWeakSpot_L UBoxComponent
---@field Horn_Collision UBoxComponent
---@field Crown_Collision2 UBoxComponent
---@field Crown_Collision UBoxComponent
---@field LegPlate_Upper_L UBoxComponent
---@field LegPlate_Upper_R UBoxComponent
---@field LegPlate_Lower_R UBoxComponent
---@field LegPlate_Lower_L UBoxComponent
---@field FinPlate_Upper_L UBoxComponent
---@field FinPlate_Upper_R UBoxComponent
---@field FinPlate_Lower_L UBoxComponent
---@field FinPlate_Lower_R UBoxComponent
---@field Timeline_6_0_Height_B42ACDF9494107A0777B14A58843DC41 float
---@field Timeline_6_0__Direction_B42ACDF9494107A0777B14A58843DC41 ETimelineDirection::Type
---@field Timeline_6_0 UTimelineComponent
---@field FadeInVortex_NewTrack_0_6DB469A3489A409D1AA93EBC0371B30C float
---@field FadeInVortex__Direction_6DB469A3489A409D1AA93EBC0371B30C ETimelineDirection::Type
---@field FadeInVortex UTimelineComponent
---@field BellySlide_TL_VortexSurfaceMaskIn_15CB762C45E7F700F4EC6CA5D7A1B1D1 float
---@field BellySlide_TL_FloorRotationSpeed_15CB762C45E7F700F4EC6CA5D7A1B1D1 float
---@field BellySlide_TL_VortexSidewaysPanTime_15CB762C45E7F700F4EC6CA5D7A1B1D1 float
---@field BellySlide_TL_VortexOutwardPanTime_15CB762C45E7F700F4EC6CA5D7A1B1D1 float
---@field BellySlide_TL_VortexForce_15CB762C45E7F700F4EC6CA5D7A1B1D1 float
---@field BellySlide_TL_SpawnPoison_15CB762C45E7F700F4EC6CA5D7A1B1D1 float
---@field BellySlide_TL_SplineTraveldistPercent_15CB762C45E7F700F4EC6CA5D7A1B1D1 float
---@field BellySlide_TL_InitialSnap_15CB762C45E7F700F4EC6CA5D7A1B1D1 float
---@field BellySlide_TL__Direction_15CB762C45E7F700F4EC6CA5D7A1B1D1 ETimelineDirection::Type
---@field BellySlide_TL UTimelineComponent
---@field HornBReakFade_NewTrack_0_EC7437A949E13F0593514899BEB3EC60 float
---@field HornBReakFade__Direction_EC7437A949E13F0593514899BEB3EC60 ETimelineDirection::Type
---@field HornBReakFade UTimelineComponent
---@field horndamageflash_BallColor_ADFCFF734B4BE1B30DAA21A913C5D46F FLinearColor
---@field horndamageflash__Direction_ADFCFF734B4BE1B30DAA21A913C5D46F ETimelineDirection::Type
---@field horndamageflash UTimelineComponent
---@field PhaseJumpTowardCenter_HorizontalDistance_B1B1AD0B487641546D483DADEA20BC36 float
---@field PhaseJumpTowardCenter_Height_B1B1AD0B487641546D483DADEA20BC36 float
---@field PhaseJumpTowardCenter__Direction_B1B1AD0B487641546D483DADEA20BC36 ETimelineDirection::Type
---@field PhaseJumpTowardCenter UTimelineComponent
---@field DrainWaterTL_WaterPosition_3C71F87D48A27D1816B5CA9CF12872AA float
---@field DrainWaterTL__Direction_3C71F87D48A27D1816B5CA9CF12872AA ETimelineDirection::Type
---@field DrainWaterTL UTimelineComponent
---@field DamageFlash_Whale_BallColor_F79397BF4231290D93FCC09444796401 FLinearColor
---@field DamageFlash_Whale__Direction_F79397BF4231290D93FCC09444796401 ETimelineDirection::Type
---@field DamageFlash_Whale UTimelineComponent
---@field MoveForward_Movement_F571A8964FEF6FBA324880ADFB0E6D79 float
---@field MoveForward__Direction_F571A8964FEF6FBA324880ADFB0E6D79 ETimelineDirection::Type
---@field MoveForward UTimelineComponent
---@field LaserAimTL_LaserMovement_CFF693284D94ABF7E0E6F28CD8FDF5E5 float
---@field LaserAimTL__Direction_CFF693284D94ABF7E0E6F28CD8FDF5E5 ETimelineDirection::Type
---@field LaserAimTL UTimelineComponent
---@field AllBonusColliders TSet<UPrimitiveComponent>
---@field LegWeakSpotColliders TSet<UPrimitiveComponent>
---@field JiggleCollidersMap TMap<UPrimitiveComponent, UAnimMontage>
---@field CurrentLegHealth float
---@field ArmorColliders TSet<UPrimitiveComponent>
---@field CurrentHornHealth float
---@field SlidingOnBelly boolean
---@field HornBroken boolean
---@field OverrideFacingTarget boolean
---@field TargetPosition AActor
---@field LaserFireDuration float
---@field ArenaSize float
---@field ReadyingForAttack boolean
---@field BodyKnockbackMode boolean
---@field CurrentLaser UNiagaraComponent
---@field AttackEnded FWhaleking_Boss_BP_CAttackEnded
---@field ForcedWalkTowardPlayer boolean
---@field StompPFX UNiagaraSystem
---@field NextAttack int32
---@field LeftArmor TSet<UPrimitiveComponent>
---@field RightArmor TSet<UPrimitiveComponent>
---@field LowerArmorPlates TSet<UPrimitiveComponent>
---@field UpperArmorPlates TSet<UPrimitiveComponent>
---@field MoveTowardPlayerActionTimeout float
---@field Biting boolean
---@field OverrideAttack int32
---@field SwipingTail boolean
---@field Stomping boolean
---@field LegStaggerCount int32
---@field LaserStartPos FVector
---@field LaserEndPos FVector
---@field Lasering boolean
---@field CurrentStaggerIsKnockdown boolean
---@field CurrentPoisonManager AWhaleKingPoisonManager_C
---@field RecentlyHitLegsWeakSpot boolean
---@field BellySlidePoisonSpawn int32
---@field MovementStartTransform FTransform
---@field SlideCirclePaths AWhaleKing_EdgeRingPaths_C
---@field LastFrameYaw float
---@field TryingToMove boolean
---@field WaterRefillDelay float
---@field WaterRefillDuration float
---@field CurrentAttackIsPoisoned boolean
---@field ['Config Data'] UWhaleKing_Config_C
---@field ['Phases Executed On'] int32
---@field RoarFinished FWhaleking_Boss_BP_CRoarFinished
---@field RoarAOEFX UNiagaraComponent
---@field Roaring boolean
---@field RoarFloorFX UNiagaraComponent
---@field DoingPhaseAttack boolean
---@field PhaseMoveTotalFishSpawns int32
---@field ['Spawned Adds'] TArray<AFisher_KingAdd_BP_C>
---@field PhasingMovePoison AWhaleKingPoisonManager_C
---@field TurnActionRunning boolean
---@field WaterPos float
---@field CurrentRoarSound UAudioComponent
---@field SpinCycleActive boolean
---@field CurrentLaserSound UAudioComponent
---@field DoingIntro boolean
---@field DarknessFogRef UENVControlData_C
---@field NormalFogRef UENVControlData_C
---@field FloorRotation float
---@field PlayerLookLoc FVector
---@field Dialogue UFS_DialogueData
---@field DisableBellySlide boolean
---@field LaserMontage UAnimMontage
---@field LaserLoopMontage UAnimMontage
---@field LaserEnd UAnimMontage
---@field LaserSFX USoundCue
---@field Laser_NormalFX UNiagaraSystem
---@field Laser_PoisonFX UNiagaraSystem
---@field TailSlamFX UNiagaraSystem
---@field ChinSlamRingClass TSubclassOf<AWhaleKing_DamagingSplashRing_C>
---@field ChinSlamMontage UAnimMontage
---@field BreakHornMontage UAnimMontage
---@field LegStagger UAnimMontage
---@field TailSlapMontage UAnimMontage
---@field KilledMontage UAnimMontage
---@field LastChinSlamTime float
---@field MyNSD FName
---@field DisableBloodWaterFX boolean
---@field TargetWaterPos float
---@field CurWaterDrainisSlow boolean
---@field WaterShouldBeFull boolean
---@field WaterRefillTime float
---@field InterpWaterpos float
local AWhaleking_Boss_BP_C = {}

---@param Damaged boolean
function AWhaleking_Boss_BP_C:ActivateTrap(Damaged) end

---@param ForceScale float
function AWhaleking_Boss_BP_C:ApplyBellySlideVortexForce(ForceScale) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AWhaleking_Boss_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

function AWhaleking_Boss_BP_C:AttackEnded__DelegateSignature() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AWhaleking_Boss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AWhaleking_Boss_BP_C:BellySlide_TL__FinishedFunc() end

function AWhaleking_Boss_BP_C:BellySlide_TL__GetUp__EventFunc() end

function AWhaleking_Boss_BP_C:BellySlide_TL__UpdateFunc() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AWhaleking_Boss_BP_C:BndEvt__Whaleking_Boss_BP_Mesh_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param Start FVector
---@param End FVector
function AWhaleking_Boss_BP_C:CalculateLaserTarget(Start, End) end

function AWhaleking_Boss_BP_C:CanExecuteBite() end

function AWhaleking_Boss_BP_C:CanExecuteChinSlam() end

---@param Can_Execute boolean
function AWhaleking_Boss_BP_C:CanExecuteLaser(Can_Execute) end

function AWhaleking_Boss_BP_C:CanExecuteStomp() end

function AWhaleking_Boss_BP_C:CanExecuteTailSlaps() end

function AWhaleking_Boss_BP_C:CanExecuteWalkAtPlayer() end

function AWhaleking_Boss_BP_C:CancelBellySlide() end

function AWhaleking_Boss_BP_C:CancelForcedWalk() end

function AWhaleking_Boss_BP_C:CancelLaser() end

function AWhaleking_Boss_BP_C:CancelRoarReady() end

function AWhaleking_Boss_BP_C:CheckChase() end

function AWhaleking_Boss_BP_C:ChooseStompType() end

---@param Hit FHitResult
---@param Horn boolean
function AWhaleking_Boss_BP_C:ConfigureHitReact(Hit, Horn) end

---@param MotionValue float
---@param PoisonChance float
---@param Damage FFB_DamageAttributeSet
function AWhaleking_Boss_BP_C:ConstructAttackDamage(MotionValue, PoisonChance, Damage) end

function AWhaleking_Boss_BP_C:DamageFlash_Whale__FinishedFunc() end

function AWhaleking_Boss_BP_C:DamageFlash_Whale__UpdateFunc() end

function AWhaleking_Boss_BP_C:DeathSpin() end

function AWhaleking_Boss_BP_C:DoBellySlide() end

function AWhaleking_Boss_BP_C:DoBiting() end

function AWhaleking_Boss_BP_C:DoChinSlam() end

function AWhaleking_Boss_BP_C:DoHornBreak() end

function AWhaleking_Boss_BP_C:DoInroFogTrick() end

function AWhaleking_Boss_BP_C:DoIntro() end

function AWhaleking_Boss_BP_C:DoLaserAttack() end

function AWhaleking_Boss_BP_C:DoPhaseTransition() end

function AWhaleking_Boss_BP_C:DoStomping() end

function AWhaleking_Boss_BP_C:DoTailSlaps() end

---@param ForceTurnMode boolean
function AWhaleking_Boss_BP_C:DoTurning(ForceTurnMode) end

---@param Time float
function AWhaleking_Boss_BP_C:DrainWater(Time) end

function AWhaleking_Boss_BP_C:DrainWaterTL__FinishedFunc() end

function AWhaleking_Boss_BP_C:DrainWaterTL__UpdateFunc() end

---@param Left boolean
---@param Strong boolean
function AWhaleking_Boss_BP_C:DropFoot(Left, Strong) end

function AWhaleking_Boss_BP_C:EndParalysis() end

function AWhaleking_Boss_BP_C:EnterBodyKnockbackMode() end

---@param Mode EnemyBehaviourMode::Type
function AWhaleking_Boss_BP_C:EnterTrapMode(Mode) end

---@param Index int32
function AWhaleking_Boss_BP_C:ExecuteAttackByIndex(Index) end

---@param EntryPoint int32
function AWhaleking_Boss_BP_C:ExecuteUbergraph_Whaleking_Boss_BP(EntryPoint) end

function AWhaleking_Boss_BP_C:ExitBodyKnockbackMode() end

function AWhaleking_Boss_BP_C:FadeInVortex__FinishedFunc() end

function AWhaleking_Boss_BP_C:FadeInVortex__UpdateFunc() end

function AWhaleking_Boss_BP_C:FlopTheFish() end

---@param Normalized_Dist_From_Center float
---@param Center_Facing_Dot float
function AWhaleking_Boss_BP_C:GetArenaOrientation(Normalized_Dist_From_Center, Center_Facing_Dot) end

---@param ArenaWater_Ref AFS_StaticMeshActor_C
function AWhaleking_Boss_BP_C:GetArenaWater(ArenaWater_Ref) end

---@param Phase_Index int32
function AWhaleking_Boss_BP_C:GetCurrentPhase(Phase_Index) end

---@param Left boolean
function AWhaleking_Boss_BP_C:GetFootImpactLoc(Left) end

---@param Comp USceneComponent
function AWhaleking_Boss_BP_C:GetHeightAboveSpawnerForComponent(Comp) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AWhaleking_Boss_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param Alpha float
function AWhaleking_Boss_BP_C:GetLaserTargetPosAtTime(Alpha) end

function AWhaleking_Boss_BP_C:GetPlayerFacingDot_0() end

function AWhaleking_Boss_BP_C:GetPointOnOppositeSideOfArena() end

function AWhaleking_Boss_BP_C:GetTarget() end

function AWhaleking_Boss_BP_C:GetTargetFacingDot() end

---@param HitBox USphereComponent
---@param Socket FName
function AWhaleking_Boss_BP_C:HandleStompImpact(HitBox, Socket) end

function AWhaleking_Boss_BP_C:HitLegsWeakSpot() end

function AWhaleking_Boss_BP_C:HornBReakFade__FinishedFunc() end

function AWhaleking_Boss_BP_C:HornBReakFade__UpdateFunc() end

---@param PlayerInteracting AActor
function AWhaleking_Boss_BP_C:Interact(PlayerInteracting) end

---@param Active boolean
function AWhaleking_Boss_BP_C:IsPoisonActive(Active) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AWhaleking_Boss_BP_C:Kill(NoRewards, SupressDeathSound) end

function AWhaleking_Boss_BP_C:KillPoisonCircles() end

function AWhaleking_Boss_BP_C:LaserAimTL__FinishedFunc() end

function AWhaleking_Boss_BP_C:LaserAimTL__UpdateFunc() end

---@param Left boolean
function AWhaleking_Boss_BP_C:LiftFoot(Left) end

function AWhaleking_Boss_BP_C:MoveForward__FinishedFunc() end

function AWhaleking_Boss_BP_C:MoveForward__UpdateFunc() end

function AWhaleking_Boss_BP_C:MoveTowardPlayerAction() end

function AWhaleking_Boss_BP_C:NewFunction_0_0() end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_1519EA7C4E4D8CA315D975A9C2026BCF(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_20E9417140D586DC9120C48C6B827528(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_2392ED684B219909E579FE8B2AFEA3F1(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_426E6CF8442EC11B047D88B1F0B62DDE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_45B46F6B4D5E9E1DEB3169880F45408B(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_463237F8463F7FD0ACA0A79B4DF0E279(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_5E536F95414704064269C2B42DA04CD2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_64FCE94D49C1F219FC4BBD84FA3297DC(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_6C3B54F04898C7D196F3F2875739EDE2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_6DE6E34C4B6E18824EDD62A56EB804EE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_74B2856742C30135E4778E943B9C9624(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_839B543C477BC35C651BC599C7BECC06(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_8A077F7C4E4EE39815C6B086B0B79899(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_9B1F2174409D1C6F6DD71A9E53347231(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_9D32C13E44A5EB3048964A95DE5D983F(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_A13847EA47AFD6843C7112B92800E82D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_AB3D29634E1B40DC0654CE84BF99D2E5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_BF0227C34A03FA31AFC3CC8E331A6C5D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_C040BED642D92190A8339093F05A0EF5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_CA65415C4E8F2EEA36445181F3263464(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_CC3923254D6DDEE879175CAEBAC76FC6(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnBlendOut_D54D206F4129EEB1C2831EBAF46DAA2A(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_1519EA7C4E4D8CA315D975A9C2026BCF(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_20E9417140D586DC9120C48C6B827528(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_2392ED684B219909E579FE8B2AFEA3F1(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_426E6CF8442EC11B047D88B1F0B62DDE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_45B46F6B4D5E9E1DEB3169880F45408B(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_463237F8463F7FD0ACA0A79B4DF0E279(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_5E536F95414704064269C2B42DA04CD2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_64FCE94D49C1F219FC4BBD84FA3297DC(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_6C3B54F04898C7D196F3F2875739EDE2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_6DE6E34C4B6E18824EDD62A56EB804EE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_74B2856742C30135E4778E943B9C9624(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_839B543C477BC35C651BC599C7BECC06(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_8A077F7C4E4EE39815C6B086B0B79899(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_9B1F2174409D1C6F6DD71A9E53347231(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_9D32C13E44A5EB3048964A95DE5D983F(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_A13847EA47AFD6843C7112B92800E82D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_AB3D29634E1B40DC0654CE84BF99D2E5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_BF0227C34A03FA31AFC3CC8E331A6C5D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_C040BED642D92190A8339093F05A0EF5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_CA65415C4E8F2EEA36445181F3263464(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_CC3923254D6DDEE879175CAEBAC76FC6(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnCompleted_D54D206F4129EEB1C2831EBAF46DAA2A(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_1519EA7C4E4D8CA315D975A9C2026BCF(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_20E9417140D586DC9120C48C6B827528(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_2392ED684B219909E579FE8B2AFEA3F1(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_426E6CF8442EC11B047D88B1F0B62DDE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_45B46F6B4D5E9E1DEB3169880F45408B(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_463237F8463F7FD0ACA0A79B4DF0E279(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_5E536F95414704064269C2B42DA04CD2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_64FCE94D49C1F219FC4BBD84FA3297DC(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_6C3B54F04898C7D196F3F2875739EDE2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_6DE6E34C4B6E18824EDD62A56EB804EE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_74B2856742C30135E4778E943B9C9624(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_839B543C477BC35C651BC599C7BECC06(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_8A077F7C4E4EE39815C6B086B0B79899(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_9B1F2174409D1C6F6DD71A9E53347231(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_9D32C13E44A5EB3048964A95DE5D983F(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_A13847EA47AFD6843C7112B92800E82D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_AB3D29634E1B40DC0654CE84BF99D2E5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_BF0227C34A03FA31AFC3CC8E331A6C5D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_C040BED642D92190A8339093F05A0EF5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_CA65415C4E8F2EEA36445181F3263464(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_CC3923254D6DDEE879175CAEBAC76FC6(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnInterrupted_D54D206F4129EEB1C2831EBAF46DAA2A(NotifyName) end

---@param Hit FHitResult
function AWhaleking_Boss_BP_C:OnLanded(Hit) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_1519EA7C4E4D8CA315D975A9C2026BCF(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_20E9417140D586DC9120C48C6B827528(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_2392ED684B219909E579FE8B2AFEA3F1(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_426E6CF8442EC11B047D88B1F0B62DDE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_45B46F6B4D5E9E1DEB3169880F45408B(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_463237F8463F7FD0ACA0A79B4DF0E279(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_5E536F95414704064269C2B42DA04CD2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_64FCE94D49C1F219FC4BBD84FA3297DC(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_6C3B54F04898C7D196F3F2875739EDE2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_6DE6E34C4B6E18824EDD62A56EB804EE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_74B2856742C30135E4778E943B9C9624(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_839B543C477BC35C651BC599C7BECC06(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_8A077F7C4E4EE39815C6B086B0B79899(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_9B1F2174409D1C6F6DD71A9E53347231(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_9D32C13E44A5EB3048964A95DE5D983F(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_A13847EA47AFD6843C7112B92800E82D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_AB3D29634E1B40DC0654CE84BF99D2E5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_BF0227C34A03FA31AFC3CC8E331A6C5D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_C040BED642D92190A8339093F05A0EF5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_CA65415C4E8F2EEA36445181F3263464(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_CC3923254D6DDEE879175CAEBAC76FC6(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyBegin_D54D206F4129EEB1C2831EBAF46DAA2A(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_1519EA7C4E4D8CA315D975A9C2026BCF(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_20E9417140D586DC9120C48C6B827528(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_2392ED684B219909E579FE8B2AFEA3F1(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_426E6CF8442EC11B047D88B1F0B62DDE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_45B46F6B4D5E9E1DEB3169880F45408B(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_463237F8463F7FD0ACA0A79B4DF0E279(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_5E536F95414704064269C2B42DA04CD2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_64FCE94D49C1F219FC4BBD84FA3297DC(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_6C3B54F04898C7D196F3F2875739EDE2(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_6DE6E34C4B6E18824EDD62A56EB804EE(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_74B2856742C30135E4778E943B9C9624(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_839B543C477BC35C651BC599C7BECC06(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_8A077F7C4E4EE39815C6B086B0B79899(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_9B1F2174409D1C6F6DD71A9E53347231(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_9D32C13E44A5EB3048964A95DE5D983F(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_A13847EA47AFD6843C7112B92800E82D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_AB3D29634E1B40DC0654CE84BF99D2E5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_BF0227C34A03FA31AFC3CC8E331A6C5D(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_C040BED642D92190A8339093F05A0EF5(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_CA65415C4E8F2EEA36445181F3263464(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_CC3923254D6DDEE879175CAEBAC76FC6(NotifyName) end

---@param NotifyName FName
function AWhaleking_Boss_BP_C:OnNotifyEnd_D54D206F4129EEB1C2831EBAF46DAA2A(NotifyName) end

function AWhaleking_Boss_BP_C:PauseBellySlideIfActive() end

function AWhaleking_Boss_BP_C:PhaseJumpTowardCenter__FinishedFunc() end

function AWhaleking_Boss_BP_C:PhaseJumpTowardCenter__UpdateFunc() end

function AWhaleking_Boss_BP_C:ReceiveBeginPlay() end

function AWhaleking_Boss_BP_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function AWhaleking_Boss_BP_C:ReceiveTick(DeltaSeconds) end

function AWhaleking_Boss_BP_C:RefillWater() end

function AWhaleking_Boss_BP_C:RemovePoison() end

function AWhaleking_Boss_BP_C:ResetActiveState() end

function AWhaleking_Boss_BP_C:ResetBellySlideCD() end

function AWhaleking_Boss_BP_C:ResetLegHealth() end

---@param Hit FHitResult
function AWhaleking_Boss_BP_C:ResistedDamageFlash(Hit) end

function AWhaleking_Boss_BP_C:ResumeBellySlideIfActive() end

function AWhaleking_Boss_BP_C:ReturnHome() end

function AWhaleking_Boss_BP_C:RewardDialogueEnded() end

function AWhaleking_Boss_BP_C:RoarFinished__DelegateSignature() end

function AWhaleking_Boss_BP_C:RunAttackSelectionRoutine() end

---@param AttackIndex int32
function AWhaleking_Boss_BP_C:SelectAttack(AttackIndex) end

function AWhaleking_Boss_BP_C:SetUpHurtboxes() end

function AWhaleking_Boss_BP_C:SpawnAddFish() end

---@param Socket FName
function AWhaleking_Boss_BP_C:SpawnStompPfx(Socket) end

function AWhaleking_Boss_BP_C:Stagger() end

function AWhaleking_Boss_BP_C:StartStagger() end

function AWhaleking_Boss_BP_C:TickBehaviour() end

function AWhaleking_Boss_BP_C:TickWater() end

function AWhaleking_Boss_BP_C:Timeline_6_0__FinishedFunc() end

function AWhaleking_Boss_BP_C:Timeline_6_0__UpdateFunc() end

function AWhaleking_Boss_BP_C:Timeline_6_0__bigsplash__EventFunc() end

---@param Hit FHitResult
function AWhaleking_Boss_BP_C:TookDamageFlash(Hit) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AWhaleking_Boss_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AWhaleking_Boss_BP_C:TryHornBreak() end

function AWhaleking_Boss_BP_C:TryLegStagger() end

function AWhaleking_Boss_BP_C:TryToFaceOppositeSideOfArena() end

function AWhaleking_Boss_BP_C:TurnToFaceTarget() end

function AWhaleking_Boss_BP_C:UnflopTheFish() end

---@param Fade float
function AWhaleking_Boss_BP_C:UpdateDeathFade(Fade) end

---@param NewLocation FVector
function AWhaleking_Boss_BP_C:UpdatePassiveWaterFXLocation(NewLocation) end

---@param InputPin float
function AWhaleking_Boss_BP_C:UpdateWaterPos(InputPin) end

function AWhaleking_Boss_BP_C:horndamageflash__FinishedFunc() end

function AWhaleking_Boss_BP_C:horndamageflash__UpdateFunc() end

AWhaleking_Boss_BP_C['Cancel leg stagger'] = function(self) end

---@param _ boolean
AWhaleking_Boss_BP_C['Current Move Is Pause Move'] = function(self, _) end

AWhaleking_Boss_BP_C['DoStandalone Roar'] = function(self) end

---@param SkipCurrentAttackCD boolean
---@param Don_tSetAttackingFlag boolean
AWhaleking_Boss_BP_C['End Attack State'] = function(self, SkipCurrentAttackCD, Don_tSetAttackingFlag) end

AWhaleking_Boss_BP_C['End Roaring'] = function(self) end

AWhaleking_Boss_BP_C['Entered Water'] = function(self) end

AWhaleking_Boss_BP_C['Exited Water'] = function(self) end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
AWhaleking_Boss_BP_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end

---@param Mult float
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
AWhaleking_Boss_BP_C['Get Base Attack Damage'] = function(self, Mult, FB_DamageAttributeSet) end

---@param Player boolean
---@param Non_Player_Pos FVector
AWhaleking_Boss_BP_C['Set Facing Target'] = function(self, Player, Non_Player_Pos) end

AWhaleking_Boss_BP_C['Should Turn Around'] = function(self) end

AWhaleking_Boss_BP_C['Spawn Phasing Move Poison'] = function(self) end

AWhaleking_Boss_BP_C['Start Roaring'] = function(self) end

AWhaleking_Boss_BP_C['Timeline_6_0__reeenable collision__EventFunc'] = function(self) end

AWhaleking_Boss_BP_C['Update Fog'] = function(self) end

AWhaleking_Boss_BP_C['Update Rotation'] = function(self) end
