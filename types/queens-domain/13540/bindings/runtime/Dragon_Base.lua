---@meta

---@class ADragon_Base_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BullrushHitbox4 USphereComponent
---@field BullrushHitbox3 USphereComponent
---@field BullrushHitbox2 USphereComponent
---@field BullrushHitbox1 USphereComponent
---@field BullrushHitbox0 USphereComponent
---@field RoarHitbox USphereComponent
---@field BiteHitbox USphereComponent
---@field TailHitbox_8 USphereComponent
---@field TailHitbox_7 USphereComponent
---@field TailHitbox_6 USphereComponent
---@field TailHitbox_5 USphereComponent
---@field TailHitbox_4 USphereComponent
---@field TailHitbox_3 USphereComponent
---@field TailHitbox_2 USphereComponent
---@field TailHitbox_1 USphereComponent
---@field TailHitbox_0 USphereComponent
---@field FootHitbox_r USphereComponent
---@field FootHitbox_l USphereComponent
---@field UnderNeckBlocker1 UBoxComponent
---@field UnderNeckBlocker UBoxComponent
---@field FlameBreathProjectilesSpawned int32
---@field CreepTickRate float
---@field CreepActors TArray<AFisher_SZ_FirePuddle_C>
---@field LastSpawnLoc FVector
---@field JumpBackQueryReady boolean
---@field JumpBackTargetDir FVector
---@field FlyingECS UEnvQuery
---@field FlightNavHaloRadius float
---@field CurrentHaloEQS UEnvQueryInstanceBlueprintWrapper
---@field RunningEQS boolean
---@field GeneratedFlightTarget FVector
---@field Roaring boolean
---@field RoarAOEFX UNiagaraComponent
---@field RoarFloorFX UNiagaraComponent
---@field CurrentRoarSound UAudioComponent
---@field CurrentRushRepeatsRemaining int32
---@field FireballActor TSubclassOf<ADragon_Fireball_C>
---@field FlameBreathProjectile TSubclassOf<ADragon_FlamebreathProjectile_C>
---@field CreepSize FVector
---@field VomitSound UAudioComponent
---@field RushFinished FDragon_Base_CRushFinished
---@field CreepTraceDistance float
local ADragon_Base_C = {}

---@param Damaged boolean
function ADragon_Base_C:ActivateTrap(Damaged) end

function ADragon_Base_C:AirFireball() end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function ADragon_Base_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ADragon_Base_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ADragon_Base_C:BaseKillFunc() end

function ADragon_Base_C:BasicRoar() end

function ADragon_Base_C:CancelFlameBreath() end

function ADragon_Base_C:CancelRoarAndRush() end

function ADragon_Base_C:CancelVomitLoop() end

function ADragon_Base_C:ClawingLanding() end

function ADragon_Base_C:CreepTickLoop() end

---@param Puddle AFisher_SZ_FirePuddle_C
function ADragon_Base_C:CustomEvent_0(Puddle) end

function ADragon_Base_C:DoBullrushDash() end

function ADragon_Base_C:DoFlameBreathAttack() end

function ADragon_Base_C:DoFlyingStateEntry() end

function ADragon_Base_C:DoStompL() end

function ADragon_Base_C:DoStompR() end

function ADragon_Base_C:DoTailSpin() end

function ADragon_Base_C:DoVomitMove() end

---@param Mode EnemyBehaviourMode::Type
function ADragon_Base_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ADragon_Base_C:ExecuteUbergraph_Dragon_Base(EntryPoint) end

---@param CreepType UClass
function ADragon_Base_C:GetCreepScale(CreepType) end

---@param FlatAim boolean
---@param Lead float
function ADragon_Base_C:GetFireProjectileSpawnTransform(FlatAim, Lead) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ADragon_Base_C:GetFireballDamage(FB_DamageAttributeSet) end

---@param bOverride boolean
---@param Location FVector
function ADragon_Base_C:GetRotationTargetLocationOverride(bOverride, Location) end

---@param StaggerAnim UAnimMontage
function ADragon_Base_C:GetStaggerMontage(StaggerAnim) end

---@param Range float
function ADragon_Base_C:GetStopFollowRange(Range) end

function ADragon_Base_C:GroundFireball() end

function ADragon_Base_C:JumpBack() end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function ADragon_Base_C:JumpBackQueryDone(QueryInstance, QueryStatus) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ADragon_Base_C:Kill(NoRewards, SupressDeathSound) end

function ADragon_Base_C:LoopFlameBreathProjectiles() end

function ADragon_Base_C:LoopFlyingModeEQS() end

function ADragon_Base_C:LoopVomitProjectile() end

function ADragon_Base_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_1AF00F4B4DD805A65ED940B04F56A7BB(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_43AAD99E4208BE4FFE259A9BD0F5966A(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_4C5FC9C049B1A9ED490ABD982D64F882(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_4C5FC9C049B1A9ED490ABD9839C36419(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_4C5FC9C049B1A9ED490ABD985C7F5D2D(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_4C5FC9C049B1A9ED490ABD989D6F1FC8(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_4C5FC9C049B1A9ED490ABD98E9C4BDEA(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_5E3AE0A349176852120B80BABD193540(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_680D9BAE4BB03FE02E96B389BFF9F709(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_95579E29494E8780BD4D63A9F713A293(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_95D269D94AFC9B365E63CF8C7F96D283(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_D64FE47F44AC32762EE08CBA2DC545AF(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_EA7085DB460362AF67742C9212891176(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnBlendOut_ECF7585249A635AADF00A7913AF658FC(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_1AF00F4B4DD805A65ED940B04F56A7BB(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_43AAD99E4208BE4FFE259A9BD0F5966A(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_4C5FC9C049B1A9ED490ABD982D64F882(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_4C5FC9C049B1A9ED490ABD9839C36419(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_4C5FC9C049B1A9ED490ABD985C7F5D2D(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_4C5FC9C049B1A9ED490ABD989D6F1FC8(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_4C5FC9C049B1A9ED490ABD98E9C4BDEA(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_5E3AE0A349176852120B80BABD193540(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_680D9BAE4BB03FE02E96B389BFF9F709(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_95579E29494E8780BD4D63A9F713A293(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_95D269D94AFC9B365E63CF8C7F96D283(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_D64FE47F44AC32762EE08CBA2DC545AF(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_EA7085DB460362AF67742C9212891176(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnCompleted_ECF7585249A635AADF00A7913AF658FC(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_1AF00F4B4DD805A65ED940B04F56A7BB(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_43AAD99E4208BE4FFE259A9BD0F5966A(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_4C5FC9C049B1A9ED490ABD982D64F882(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_4C5FC9C049B1A9ED490ABD9839C36419(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_4C5FC9C049B1A9ED490ABD985C7F5D2D(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_4C5FC9C049B1A9ED490ABD989D6F1FC8(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_4C5FC9C049B1A9ED490ABD98E9C4BDEA(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_5E3AE0A349176852120B80BABD193540(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_680D9BAE4BB03FE02E96B389BFF9F709(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_95579E29494E8780BD4D63A9F713A293(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_95D269D94AFC9B365E63CF8C7F96D283(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_D64FE47F44AC32762EE08CBA2DC545AF(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_EA7085DB460362AF67742C9212891176(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnInterrupted_ECF7585249A635AADF00A7913AF658FC(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_1AF00F4B4DD805A65ED940B04F56A7BB(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_43AAD99E4208BE4FFE259A9BD0F5966A(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_4C5FC9C049B1A9ED490ABD982D64F882(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_4C5FC9C049B1A9ED490ABD9839C36419(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_4C5FC9C049B1A9ED490ABD985C7F5D2D(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_4C5FC9C049B1A9ED490ABD989D6F1FC8(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_4C5FC9C049B1A9ED490ABD98E9C4BDEA(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_5E3AE0A349176852120B80BABD193540(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_680D9BAE4BB03FE02E96B389BFF9F709(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_95579E29494E8780BD4D63A9F713A293(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_95D269D94AFC9B365E63CF8C7F96D283(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_D64FE47F44AC32762EE08CBA2DC545AF(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_EA7085DB460362AF67742C9212891176(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyBegin_ECF7585249A635AADF00A7913AF658FC(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_1AF00F4B4DD805A65ED940B04F56A7BB(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_43AAD99E4208BE4FFE259A9BD0F5966A(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_4C5FC9C049B1A9ED490ABD982D64F882(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_4C5FC9C049B1A9ED490ABD9839C36419(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_4C5FC9C049B1A9ED490ABD985C7F5D2D(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_4C5FC9C049B1A9ED490ABD989D6F1FC8(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_4C5FC9C049B1A9ED490ABD98E9C4BDEA(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_5E3AE0A349176852120B80BABD193540(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_680D9BAE4BB03FE02E96B389BFF9F709(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_95579E29494E8780BD4D63A9F713A293(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_95D269D94AFC9B365E63CF8C7F96D283(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_D64FE47F44AC32762EE08CBA2DC545AF(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_EA7085DB460362AF67742C9212891176(NotifyName) end

---@param NotifyName FName
function ADragon_Base_C:OnNotifyEnd_ECF7585249A635AADF00A7913AF658FC(NotifyName) end

---@param NewState int32
function ADragon_Base_C:OnStateIndexChanged(NewState) end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function ADragon_Base_C:QueryFinished(QueryInstance, QueryStatus) end

function ADragon_Base_C:ReceiveBeginPlay() end

function ADragon_Base_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function ADragon_Base_C:ReceiveTick(DeltaSeconds) end

function ADragon_Base_C:RefreshMovePhysics() end

function ADragon_Base_C:RemoveCreep() end

function ADragon_Base_C:RoarAndRush() end

function ADragon_Base_C:RushFinished__DelegateSignature() end

---@param Selection int32
function ADragon_Base_C:SetMovementPhysicsState(Selection) end

---@param Loc FVector
---@param Type TSubclassOf<AFisher_SZ_FirePuddle_C>
---@param Damage FFB_DamageAttributeSet
---@param Source AActor
function ADragon_Base_C:SpawnCreep(Loc, Type, Damage, Source) end

function ADragon_Base_C:SpawnFireball() end

function ADragon_Base_C:SpawnFlamebreathProjectile() end

function ADragon_Base_C:SpawnVomitProjectile() end

function ADragon_Base_C:Stagger() end

function ADragon_Base_C:StartCreepTickLoop() end

function ADragon_Base_C:StartFlameBreathProjectileLoop() end

function ADragon_Base_C:StartVomitProjectileLoop() end

function ADragon_Base_C:TempDisableCollisionWithPlayer() end

---@param Start FVector
---@param End FVector
---@param Source AActor
---@param OutHit FHitResult
function ADragon_Base_C:TraceForCreep(Start, End, Source, OutHit) end

function ADragon_Base_C:UserConstructionScript() end

function ADragon_Base_C:bite() end

ADragon_Base_C['End Roaring'] = function(self) end

ADragon_Base_C['Should Move Towards Player'] = function(self) end

ADragon_Base_C['Start Attack State'] = function(self) end

ADragon_Base_C['Start Roaring'] = function(self) end
