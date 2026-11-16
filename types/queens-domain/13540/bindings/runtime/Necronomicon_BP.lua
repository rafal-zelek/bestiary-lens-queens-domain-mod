---@meta

---@class ANecronomicon_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EaterCollision UBoxComponent
---@field PushAwayHitbox USphereComponent
---@field BookSlapHitbox USphereComponent
---@field InteractBox UBoxComponent
---@field Mouth2 USceneComponent
---@field Mouth1 USceneComponent
---@field Mouth0 USceneComponent
---@field Eater USkeletalMeshComponent
---@field SpinHitbox USphereComponent
---@field RearLDagger UStaticMeshComponent
---@field RearRDagger UStaticMeshComponent
---@field FrontLDagger UStaticMeshComponent
---@field FrontRDagger UStaticMeshComponent
---@field OrbMesh UStaticMeshComponent
---@field AxeHitbox12 USphereComponent
---@field AxeHitbox11 USphereComponent
---@field AxeHitbox10 USphereComponent
---@field AxeHitbox9 USphereComponent
---@field AxeHitbox8 USphereComponent
---@field AxeHitbox7 USphereComponent
---@field AxeHitbox6 USphereComponent
---@field AxeHitbox5 USphereComponent
---@field AxeHitbox4 USphereComponent
---@field AxeHitbox3 USphereComponent
---@field AxeHitbox2 USphereComponent
---@field AxeHitbox1 USphereComponent
---@field AxeHitbox0 USphereComponent
---@field AxeMesh UStaticMeshComponent
---@field EyeMesh USkeletalMeshComponent
---@field EyeLaserPattern_Pogress_D7758B2641FF3DAF6334519FAD5D778B float
---@field EyeLaserPattern__Direction_D7758B2641FF3DAF6334519FAD5D778B ETimelineDirection::Type
---@field EyeLaserPattern UTimelineComponent
---@field Timeline_7_Pogress_D861498C4F7BEBB9488F48A63F93A8B6 float
---@field Timeline_7__Direction_D861498C4F7BEBB9488F48A63F93A8B6 ETimelineDirection::Type
---@field Timeline_7 UTimelineComponent
---@field FadeOutEaterFX_pogress_DB2CFB474D993A0FBC6473B525DE81BB float
---@field FadeOutEaterFX__Direction_DB2CFB474D993A0FBC6473B525DE81BB ETimelineDirection::Type
---@field FadeOutEaterFX UTimelineComponent
---@field RearDaggers_NewTrack_0_C323CFBB4393E4113DC0D3B30519AEC6 float
---@field RearDaggers__Direction_C323CFBB4393E4113DC0D3B30519AEC6 ETimelineDirection::Type
---@field RearDaggers UTimelineComponent
---@field FrontDaggers_NewTrack_0_85A148FF42072A58B36D6F948D680BCD float
---@field FrontDaggers__Direction_85A148FF42072A58B36D6F948D680BCD ETimelineDirection::Type
---@field FrontDaggers UTimelineComponent
---@field ShowOrb_NewTrack_0_617CE90743685DC97BD832B95681A528 float
---@field ShowOrb__Direction_617CE90743685DC97BD832B95681A528 ETimelineDirection::Type
---@field ShowOrb UTimelineComponent
---@field OrbJumpArc_Progress_1A9BCECB4589530650A3069F266AC795 float
---@field OrbJumpArc_VerticalArc_1A9BCECB4589530650A3069F266AC795 float
---@field OrbJumpArc_TrackingStrength_1A9BCECB4589530650A3069F266AC795 float
---@field OrbJumpArc__Direction_1A9BCECB4589530650A3069F266AC795 ETimelineDirection::Type
---@field OrbJumpArc UTimelineComponent
---@field ShowAxe_NewTrack_0_45D37DBB4D4F47CB6722FB8DC14E2F49 float
---@field ShowAxe__Direction_45D37DBB4D4F47CB6722FB8DC14E2F49 ETimelineDirection::Type
---@field ShowAxe UTimelineComponent
---@field BookModeScaleHandler_Time_E6EEB1C141FC0A1949988896CC0DC671 float
---@field BookModeScaleHandler__Direction_E6EEB1C141FC0A1949988896CC0DC671 ETimelineDirection::Type
---@field BookModeScaleHandler UTimelineComponent
---@field GeneratedFlightTarget FVector
---@field RunningEQS boolean
---@field UseHaloFlightTargetMode boolean
---@field CurrentHaloEQS UEnvQueryInstanceBlueprintWrapper
---@field ['FlightThinksIt\'sStuck'] boolean
---@field NonHaloTargetPosOffset FVector
---@field BookModeScale float
---@field NormalScale float
---@field CurrentFlightDir FVector
---@field EQSRandomDivisor float
---@field FlightSpeedByDistacneCurve UCurveFloat
---@field ['Mode HP Remaining'] float
---@field ModeHPMax float
---@field ActualSpawnerCount int32
---@field CreatingZombieSpawner boolean
---@field ZombieSpawnerCreationOnCD boolean
---@field NecronomiconSpawner ANecronomicon_Boss_Spawner_C
---@field AllSpawners TArray<ANecroZombie_Spawner_C>
---@field ValidSpawnerPlatforms TArray<ANecro_MeatPlatform_C>
---@field NewSpawner ANecro_MeatPlatform_C
---@field NewSpawnerLaunchVel FVector
---@field NextLaserTime float
---@field EyeVisible boolean
---@field EyeTarget FVector
---@field CurrentPlatformTargetList TArray<ANecro_MeatPlatform_C>
---@field PlatformsToExplode TArray<ANecro_MeatPlatform_C>
---@field ['Laser time platform batches'] int32
---@field ['Laser Time Platform Place Time'] float
---@field JumpTargetLoc FVector
---@field JumpDuration float
---@field JumpStartLoc FVector
---@field DoingPhaseTransition boolean
---@field ['Demon Mode HP %'] float
---@field ['Book Mode HP%'] float
---@field ActiveZombies TSet<ANecroZombie_BossAdd_BP_C>
---@field BookModeToEaterModeZombieCount int32
---@field DemonModeToEaterModeZombieCount int32
---@field DemonModeZombieCountRequirementIncreasePerSpawner int32
---@field DemonModeEaterTransitionWeightPerZombie float
---@field EaterMode_CalculatedSpellChargeTime float
---@field EaterDamageResistActive boolean
---@field ExplodingZombies TArray<ANecroZombie_BossAdd_BP_C>
---@field ZombieEatLoopDelay float
---@field ['ZombieEatHealing%'] float
---@field LaserTimeAttackWeight float
---@field BasePlatformExplodeWaitTime float
---@field EaterMode_SpellChargeTimePerZombie float
---@field EaterMode_SpellChargeTimeBase float
---@field EaterCastFX UNiagaraComponent
---@field LaserTargetStart FVector
---@field LaserTargetEnd FVector
---@field LaserDamageActive boolean
---@field CurrentLaser UNiagaraComponent
---@field LaserAlreadyHitPlayer boolean
---@field LaserPatternStyle int32
---@field BeamPFX UNiagaraSystem
---@field LaserSFX UAudioComponent
---@field LaserSFXPos float
---@field ['Last Chosen Form'] int32
---@field ActiveLasers TArray<ANecro_Laser_Actor_C>
---@field EaterMode_LaserDir boolean
---@field EaterMode_RandomLaserPoints TArray<FVector>
---@field RemainingRandomLasersCount int32
---@field StartingRandomLasersCount_0 int32
---@field LastLaserPos FVector
---@field SpinningSound UAudioComponent
---@field ['Spinning FX'] UNiagaraComponent
---@field DidIntro boolean
---@field BookData UEnemyData_C
---@field DemonData UEnemyData_C
---@field EyeData UEnemyData_C
---@field EaterData UEnemyData_C
local ANecronomicon_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function ANecronomicon_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ANecronomicon_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ANecronomicon_BP_C:BecameUnstuck() end

function ANecronomicon_BP_C:BookModeScaleHandler__FinishedFunc() end

function ANecronomicon_BP_C:BookModeScaleHandler__UpdateFunc() end

---@param Start FVector
---@param End FVector
function ANecronomicon_BP_C:CalculateLaserTarget(Start, End) end

---@param bIgnoreWeight boolean
---@param Index int32
function ANecronomicon_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function ANecronomicon_BP_C:CancelAttacksForPhaseTransition() end

function ANecronomicon_BP_C:CancelBookPhaseTransition() end

function ANecronomicon_BP_C:CancelDemonTransition() end

function ANecronomicon_BP_C:CancelEaterTransition() end

function ANecronomicon_BP_C:CancelLaser() end

function ANecronomicon_BP_C:CancelLaserPattern() end

function ANecronomicon_BP_C:CancelSpawnerCreation() end

function ANecronomicon_BP_C:ChangeFromBookForm() end

function ANecronomicon_BP_C:ChooseRandomPatternLaserPos() end

function ANecronomicon_BP_C:ConfigureAsBookMode() end

function ANecronomicon_BP_C:ConfigureAsDemonMode() end

function ANecronomicon_BP_C:ContinueWandering() end

function ANecronomicon_BP_C:CreateSpawners() end

function ANecronomicon_BP_C:CustomEvent() end

function ANecronomicon_BP_C:DamagedOutOfEaterForm() end

function ANecronomicon_BP_C:DamagedOutOfEyeMode() end

function ANecronomicon_BP_C:DamagedOutofDemonForm() end

function ANecronomicon_BP_C:DoBOokMelee() end

function ANecronomicon_BP_C:DoCircleLaserPattern() end

function ANecronomicon_BP_C:DoEyeLaser() end

function ANecronomicon_BP_C:DoIntroAnimation() end

function ANecronomicon_BP_C:DoLineLaserPattern() end

function ANecronomicon_BP_C:EaterHealFromlaserHit() end

function ANecronomicon_BP_C:EaterPushAway() end

function ANecronomicon_BP_C:Ended() end

function ANecronomicon_BP_C:EnterEyeState() end

---@param EntryPoint int32
function ANecronomicon_BP_C:ExecuteUbergraph_Necronomicon_BP(EntryPoint) end

function ANecronomicon_BP_C:ExitDemonMode() end

function ANecronomicon_BP_C:ExitEaterMode() end

function ANecronomicon_BP_C:ExitEyeMode() end

function ANecronomicon_BP_C:EyeLaserPattern__FinishedFunc() end

function ANecronomicon_BP_C:EyeLaserPattern__StartLasering__EventFunc() end

function ANecronomicon_BP_C:EyeLaserPattern__UpdateFunc() end

function ANecronomicon_BP_C:FadeOutEaterCastFX() end

function ANecronomicon_BP_C:FadeOutEaterFX__FinishedFunc() end

function ANecronomicon_BP_C:FadeOutEaterFX__UpdateFunc() end

---@param ArcParam float
---@param Position float
---@param PredictResult FPredictProjectilePathResult
---@param Pos FVector
function ANecronomicon_BP_C:FindLaunchArcForZombieSpawnerProjectile(ArcParam, Position, PredictResult, Pos) end

function ANecronomicon_BP_C:FinishEaterModeTransition() end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function ANecronomicon_BP_C:FlightEQSFinished(QueryInstance, QueryStatus) end

function ANecronomicon_BP_C:FrontDaggers__FinishedFunc() end

function ANecronomicon_BP_C:FrontDaggers__UpdateFunc() end

---@param Hit FHitResult
---@param BluntResistance EnemyResistance::Type
---@param PierceResistance EnemyResistance::Type
---@param SlashResistance EnemyResistance::Type
function ANecronomicon_BP_C:GetDamageResistancesForHit(Hit, BluntResistance, PierceResistance, SlashResistance) end

---@param Target FVector
function ANecronomicon_BP_C:GetFlightTarget(Target) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ANecronomicon_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param Start FVector
---@param End FVector
---@param Dir FVector
function ANecronomicon_BP_C:GetLaserParams(Start, End, Dir) end

function ANecronomicon_BP_C:GoatTaunt() end

function ANecronomicon_BP_C:HideDaggers() end

function ANecronomicon_BP_C:HideOrb() end

function ANecronomicon_BP_C:InitialHideWeapons() end

---@param PlayerInteracting AActor
function ANecronomicon_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ANecronomicon_BP_C:Kill(NoRewards, SupressDeathSound) end

function ANecronomicon_BP_C:MoveTowardsPlayer() end

function ANecronomicon_BP_C:NotifyAttacksAboutStagger() end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_02F331BB41AD394C676288A6A6B347E8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_0B58267C49BCF0DF3F24FB8105C13634(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_111D65EF40B40F4CB190F8A8B0CB0666(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_1A7FC8474F57711010536CBDF5EF2C1B(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_2C88E5C844049A829A78EFABF44E54A8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_3B02266140BBA26D4D2467B9F9041C35(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_3D137CA54A426E9C8DD2B295630460FB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_42FC45014A67C96E39ED69AB41C5C3E9(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_43C76186409D09D049DE559A51EDF2C5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_4572B0CD44408C0E609C94AC2E2F9572(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_5499589A4E2BBD631EB31B87E8C7BAE3(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_5EE7B1634B6B5F321CDC82B8CD2C8F3A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_672A804E42BE57183D55068A2CBE33CA(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_745B8AD447CD18EC1036DBB658CC8EF4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_7498D8DB42E7A6DD70335AA00745E504(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_75C90EE245FD2E20798CFB84B08C84DB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_769279C940B4E6DD13A94495103626E7(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_799D6E5241F1612B807B528A061D1BF5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_7A2B783344C1E7259666FB9A6856073E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_8313FB274C82BBA331F78491F6714066(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_8E8912F74D982FC5F22D8486B523F36E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_901045D742EB16156797BDA13BBD3128(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_90DEE8D1441459E416B94B995DA42F44(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_9BC86834432A1A77F192DFA842BDA347(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_9D49AADC4777F3E8FD0CDA97D9EA4006(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_A1F5497946D1388490E7FFAC37E7442A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_A353017A4FC2A9CA08E7BEB964227CE0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_C5814D3A488A54C36AD06AA9550A912A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_D94B56F2476822A0C852AB81FFEDA2E0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_DAA01216461674F45A748EB656A5C3FE(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_E5DB55E74A4A4D1A3CB43F96ACCCB3C4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_F6AF5F8448EA7C8183A1A0AD5D764937(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnBlendOut_FE053E6646B9D56027FFF2A29785B9C8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_02F331BB41AD394C676288A6A6B347E8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_0B58267C49BCF0DF3F24FB8105C13634(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_111D65EF40B40F4CB190F8A8B0CB0666(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_1A7FC8474F57711010536CBDF5EF2C1B(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_2C88E5C844049A829A78EFABF44E54A8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_3B02266140BBA26D4D2467B9F9041C35(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_3D137CA54A426E9C8DD2B295630460FB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_42FC45014A67C96E39ED69AB41C5C3E9(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_43C76186409D09D049DE559A51EDF2C5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_4572B0CD44408C0E609C94AC2E2F9572(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_5499589A4E2BBD631EB31B87E8C7BAE3(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_5EE7B1634B6B5F321CDC82B8CD2C8F3A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_672A804E42BE57183D55068A2CBE33CA(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_745B8AD447CD18EC1036DBB658CC8EF4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_7498D8DB42E7A6DD70335AA00745E504(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_75C90EE245FD2E20798CFB84B08C84DB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_769279C940B4E6DD13A94495103626E7(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_799D6E5241F1612B807B528A061D1BF5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_7A2B783344C1E7259666FB9A6856073E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_8313FB274C82BBA331F78491F6714066(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_8E8912F74D982FC5F22D8486B523F36E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_901045D742EB16156797BDA13BBD3128(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_90DEE8D1441459E416B94B995DA42F44(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_9BC86834432A1A77F192DFA842BDA347(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_9D49AADC4777F3E8FD0CDA97D9EA4006(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_A1F5497946D1388490E7FFAC37E7442A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_A353017A4FC2A9CA08E7BEB964227CE0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_C5814D3A488A54C36AD06AA9550A912A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_D94B56F2476822A0C852AB81FFEDA2E0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_DAA01216461674F45A748EB656A5C3FE(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_E5DB55E74A4A4D1A3CB43F96ACCCB3C4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_F6AF5F8448EA7C8183A1A0AD5D764937(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnCompleted_FE053E6646B9D56027FFF2A29785B9C8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_02F331BB41AD394C676288A6A6B347E8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_0B58267C49BCF0DF3F24FB8105C13634(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_111D65EF40B40F4CB190F8A8B0CB0666(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_1A7FC8474F57711010536CBDF5EF2C1B(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_2C88E5C844049A829A78EFABF44E54A8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_3B02266140BBA26D4D2467B9F9041C35(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_3D137CA54A426E9C8DD2B295630460FB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_42FC45014A67C96E39ED69AB41C5C3E9(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_43C76186409D09D049DE559A51EDF2C5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_4572B0CD44408C0E609C94AC2E2F9572(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_5499589A4E2BBD631EB31B87E8C7BAE3(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_5EE7B1634B6B5F321CDC82B8CD2C8F3A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_672A804E42BE57183D55068A2CBE33CA(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_745B8AD447CD18EC1036DBB658CC8EF4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_7498D8DB42E7A6DD70335AA00745E504(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_75C90EE245FD2E20798CFB84B08C84DB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_769279C940B4E6DD13A94495103626E7(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_799D6E5241F1612B807B528A061D1BF5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_7A2B783344C1E7259666FB9A6856073E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_8313FB274C82BBA331F78491F6714066(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_8E8912F74D982FC5F22D8486B523F36E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_901045D742EB16156797BDA13BBD3128(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_90DEE8D1441459E416B94B995DA42F44(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_9BC86834432A1A77F192DFA842BDA347(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_9D49AADC4777F3E8FD0CDA97D9EA4006(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_A1F5497946D1388490E7FFAC37E7442A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_A353017A4FC2A9CA08E7BEB964227CE0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_C5814D3A488A54C36AD06AA9550A912A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_D94B56F2476822A0C852AB81FFEDA2E0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_DAA01216461674F45A748EB656A5C3FE(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_E5DB55E74A4A4D1A3CB43F96ACCCB3C4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_F6AF5F8448EA7C8183A1A0AD5D764937(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnInterrupted_FE053E6646B9D56027FFF2A29785B9C8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_02F331BB41AD394C676288A6A6B347E8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_0B58267C49BCF0DF3F24FB8105C13634(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_111D65EF40B40F4CB190F8A8B0CB0666(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_1A7FC8474F57711010536CBDF5EF2C1B(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_2C88E5C844049A829A78EFABF44E54A8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_3B02266140BBA26D4D2467B9F9041C35(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_3D137CA54A426E9C8DD2B295630460FB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_42FC45014A67C96E39ED69AB41C5C3E9(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_43C76186409D09D049DE559A51EDF2C5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_4572B0CD44408C0E609C94AC2E2F9572(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_5499589A4E2BBD631EB31B87E8C7BAE3(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_5EE7B1634B6B5F321CDC82B8CD2C8F3A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_672A804E42BE57183D55068A2CBE33CA(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_745B8AD447CD18EC1036DBB658CC8EF4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_7498D8DB42E7A6DD70335AA00745E504(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_75C90EE245FD2E20798CFB84B08C84DB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_769279C940B4E6DD13A94495103626E7(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_799D6E5241F1612B807B528A061D1BF5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_7A2B783344C1E7259666FB9A6856073E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_8313FB274C82BBA331F78491F6714066(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_8E8912F74D982FC5F22D8486B523F36E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_901045D742EB16156797BDA13BBD3128(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_90DEE8D1441459E416B94B995DA42F44(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_9BC86834432A1A77F192DFA842BDA347(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_9D49AADC4777F3E8FD0CDA97D9EA4006(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_A1F5497946D1388490E7FFAC37E7442A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_A353017A4FC2A9CA08E7BEB964227CE0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_C5814D3A488A54C36AD06AA9550A912A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_D94B56F2476822A0C852AB81FFEDA2E0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_DAA01216461674F45A748EB656A5C3FE(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_E5DB55E74A4A4D1A3CB43F96ACCCB3C4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_F6AF5F8448EA7C8183A1A0AD5D764937(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyBegin_FE053E6646B9D56027FFF2A29785B9C8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_02F331BB41AD394C676288A6A6B347E8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_0B58267C49BCF0DF3F24FB8105C13634(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_111D65EF40B40F4CB190F8A8B0CB0666(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_1A7FC8474F57711010536CBDF5EF2C1B(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_2C88E5C844049A829A78EFABF44E54A8(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_3B02266140BBA26D4D2467B9F9041C35(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_3D137CA54A426E9C8DD2B295630460FB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_42FC45014A67C96E39ED69AB41C5C3E9(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_43C76186409D09D049DE559A51EDF2C5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_4572B0CD44408C0E609C94AC2E2F9572(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_5499589A4E2BBD631EB31B87E8C7BAE3(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_5EE7B1634B6B5F321CDC82B8CD2C8F3A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_672A804E42BE57183D55068A2CBE33CA(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_745B8AD447CD18EC1036DBB658CC8EF4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_7498D8DB42E7A6DD70335AA00745E504(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_75C90EE245FD2E20798CFB84B08C84DB(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_769279C940B4E6DD13A94495103626E7(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_799D6E5241F1612B807B528A061D1BF5(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_7A2B783344C1E7259666FB9A6856073E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_8313FB274C82BBA331F78491F6714066(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_8E8912F74D982FC5F22D8486B523F36E(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_901045D742EB16156797BDA13BBD3128(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_90DEE8D1441459E416B94B995DA42F44(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_9BC86834432A1A77F192DFA842BDA347(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_9D49AADC4777F3E8FD0CDA97D9EA4006(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_A1F5497946D1388490E7FFAC37E7442A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_A353017A4FC2A9CA08E7BEB964227CE0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_C5814D3A488A54C36AD06AA9550A912A(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_D94B56F2476822A0C852AB81FFEDA2E0(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_DAA01216461674F45A748EB656A5C3FE(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_E5DB55E74A4A4D1A3CB43F96ACCCB3C4(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_F6AF5F8448EA7C8183A1A0AD5D764937(NotifyName) end

---@param NotifyName FName
function ANecronomicon_BP_C:OnNotifyEnd_FE053E6646B9D56027FFF2A29785B9C8(NotifyName) end

function ANecronomicon_BP_C:OrbJumpArc__FinishedFunc() end

function ANecronomicon_BP_C:OrbJumpArc__UpdateFunc() end

function ANecronomicon_BP_C:PhaseHPDepleted() end

function ANecronomicon_BP_C:RandomLaserPattern() end

function ANecronomicon_BP_C:RearDaggers__FinishedFunc() end

function ANecronomicon_BP_C:RearDaggers__UpdateFunc() end

function ANecronomicon_BP_C:ReceiveBeginPlay() end

function ANecronomicon_BP_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function ANecronomicon_BP_C:ReceiveTick(DeltaSeconds) end

---@param NewParam AActor
function ANecronomicon_BP_C:RemoveLaserFromActorList(NewParam) end

function ANecronomicon_BP_C:ScaleDownFromBookMode() end

function ANecronomicon_BP_C:ScaleUpForBookMode() end

function ANecronomicon_BP_C:SelectLaserPattern() end

function ANecronomicon_BP_C:SelectNextForm() end

function ANecronomicon_BP_C:SelectRandomPatternTargetLoc() end

function ANecronomicon_BP_C:SetMovementStatsToCurrentSTate() end

function ANecronomicon_BP_C:ShowAxe__FinishedFunc() end

function ANecronomicon_BP_C:ShowAxe__UpdateFunc() end

function ANecronomicon_BP_C:ShowFrontDaggers() end

function ANecronomicon_BP_C:ShowOrb__FinishedFunc() end

function ANecronomicon_BP_C:ShowOrb__UpdateFunc() end

function ANecronomicon_BP_C:ShowRearDaggers() end

function ANecronomicon_BP_C:SpawnEaterCastFX() end

---@param SpawnTransform FTransform
---@param DelayBeforeFiring float
---@param SnapToPlayerOnStart boolean
function ANecronomicon_BP_C:SpawnNecroLaser(SpawnTransform, DelayBeforeFiring, SnapToPlayerOnStart) end

function ANecronomicon_BP_C:SpawnRandomLaserOnPlayer() end

function ANecronomicon_BP_C:SpawnRandomPatternLaser() end

---@param Position FVector
function ANecronomicon_BP_C:SpawnZombieSpawner(Position) end

function ANecronomicon_BP_C:SpawnZombies() end

function ANecronomicon_BP_C:Stagger() end

function ANecronomicon_BP_C:StaggerCancelSpinAttack() end

function ANecronomicon_BP_C:StartLaser() end

function ANecronomicon_BP_C:StartLaserDamage() end

function ANecronomicon_BP_C:StartWandering() end

function ANecronomicon_BP_C:StopWandering() end

function ANecronomicon_BP_C:TransitionToDemonForm() end

function ANecronomicon_BP_C:TransitionToEater() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ANecronomicon_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ANecronomicon_BP_C:UnlockPositionFromEaterMode() end

function ANecronomicon_BP_C:UserConstructionScript() end

---@param bNoRewards boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ANecronomicon_BP_C:ZombieDied(bNoRewards, EnemyThatDied) end

ANecronomicon_BP_C['Book Fire Homing Missile'] = function(self) end

ANecronomicon_BP_C['Book FireBloodProjectile'] = function(self) end

ANecronomicon_BP_C['Cancel Jump attack'] = function(self) end

ANecronomicon_BP_C['Cancel Move To Eater Loc'] = function(self) end

ANecronomicon_BP_C['Do Laser Damage Trace and Update PFX'] = function(self) end

ANecronomicon_BP_C['Eater Laser Patterns'] = function(self) end

ANecronomicon_BP_C['Goat DoAxeAttack'] = function(self) end

ANecronomicon_BP_C['Goat DoJumpAttack'] = function(self) end

ANecronomicon_BP_C['Goat DoSpinAttack'] = function(self) end

ANecronomicon_BP_C['Init Flight'] = function(self) end

---@param Target float
ANecronomicon_BP_C['InterpLaserSFX To Pos'] = function(self, Target) end

---@param Enemy AEnemyBase_C
---@param Damage float
---@param Tags FGameplayTagContainer
---@param DataTags TMap<FGameplayTag, float>
ANecronomicon_BP_C['Received Damage'] = function(self, Enemy, Damage, Tags, DataTags) end

ANecronomicon_BP_C['Refill Mode Health'] = function(self) end

ANecronomicon_BP_C['Refresh Flight EQS'] = function(self) end

ANecronomicon_BP_C['Return From BOok Form'] = function(self) end

ANecronomicon_BP_C['Should Move Towards Player'] = function(self) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
ANecronomicon_BP_C['Spawner Location Sort'] = function(self, ObjectA, ObjectB, Result) end

ANecronomicon_BP_C['Stuck In Corner'] = function(self) end

ANecronomicon_BP_C['Update Rotation'] = function(self) end
