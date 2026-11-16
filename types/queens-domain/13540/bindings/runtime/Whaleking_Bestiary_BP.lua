---@meta

---@class AWhaleking_Bestiary_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Whaleking_Horn_Broken USkeletalMeshComponent
---@field HornMesh UStaticMeshComponent
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
---@field AttackEnded FWhaleking_Bestiary_BP_CAttackEnded
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
---@field RoarFinished FWhaleking_Bestiary_BP_CRoarFinished
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
local AWhaleking_Bestiary_BP_C = {}

function AWhaleking_Bestiary_BP_C:AttackEnded__DelegateSignature() end

---@param EntryPoint int32
function AWhaleking_Bestiary_BP_C:ExecuteUbergraph_Whaleking_Bestiary_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AWhaleking_Bestiary_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AWhaleking_Bestiary_BP_C:Interact(PlayerInteracting) end

function AWhaleking_Bestiary_BP_C:RoarFinished__DelegateSignature() end
