---@meta

---@class ADemonSpider_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DistanceCheckPoint USceneComponent
---@field FireSlamHitbox USphereComponent
---@field ButtHitbox8 USphereComponent
---@field ButtHitbox7 USphereComponent
---@field ButtHitbox6 USphereComponent
---@field ButtHitbox5 USphereComponent
---@field ButtHitbox4 USphereComponent
---@field ButtHitbox3 USphereComponent
---@field ButtHitbox2 USphereComponent
---@field ButtHitbox1 USphereComponent
---@field ButtHitbox USphereComponent
---@field HornsHitbox2 USphereComponent
---@field HornsHitbox1 USphereComponent
---@field HornsHitbox USphereComponent
---@field MouthHitbox USphereComponent
---@field QuickSnapTL_doin_56EBBBF046FEC288D75FB9B3697EFB16 float
---@field QuickSnapTL__Direction_56EBBBF046FEC288D75FB9B3697EFB16 ETimelineDirection::Type
---@field QuickSnapTL UTimelineComponent
---@field FightController ADemonBoss_FightController_C
---@field FacingCCW boolean
---@field MagmaWalkLavaRadius float
---@field MagmaWalkLavaZigZagWidth float
---@field SnapStartLoc FVector
---@field TurnaroundBuildup float
---@field BatIsDead boolean
local ADemonSpider_BP_C = {}

---@param Damaged boolean
function ADemonSpider_BP_C:ActivateTrap(Damaged) end

function ADemonSpider_BP_C:Aggrod() end

function ADemonSpider_BP_C:ApplyPushbackOnHit() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ADemonSpider_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bNoRewards boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ADemonSpider_BP_C:BatDied(bNoRewards, EnemyThatDied) end

function ADemonSpider_BP_C:BothBossesAreDead() end

function ADemonSpider_BP_C:CheckForStuckPath() end

---@param Mode EnemyBehaviourMode::Type
function ADemonSpider_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ADemonSpider_BP_C:ExecuteUbergraph_DemonSpider_BP(EntryPoint) end

function ADemonSpider_BP_C:GetCenterPointForAI() end

---@param Angle float
---@param Distance float
function ADemonSpider_BP_C:GetPlayerPositionRelativeOnTrack(Angle, Distance) end

---@param Angle float
---@param Distance float
function ADemonSpider_BP_C:GetPositionOnTrack(Angle, Distance) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ADemonSpider_BP_C:Kill(NoRewards, SupressDeathSound) end

function ADemonSpider_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ADemonSpider_BP_C:OnBlendOut_397ECC6046FC11B306E744B3095BFB3B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnBlendOut_397ECC6046FC11B306E744B30BA99144(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnBlendOut_397ECC6046FC11B306E744B3D247346B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnBlendOut_4C3A33AD4D9E8213C78DA0AB8D4D0519(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnBlendOut_C0C8D6154F09B4253C00FCABACAA54B8(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnCompleted_397ECC6046FC11B306E744B3095BFB3B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnCompleted_397ECC6046FC11B306E744B30BA99144(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnCompleted_397ECC6046FC11B306E744B3D247346B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnCompleted_4C3A33AD4D9E8213C78DA0AB8D4D0519(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnCompleted_C0C8D6154F09B4253C00FCABACAA54B8(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnInterrupted_397ECC6046FC11B306E744B3095BFB3B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnInterrupted_397ECC6046FC11B306E744B30BA99144(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnInterrupted_397ECC6046FC11B306E744B3D247346B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnInterrupted_4C3A33AD4D9E8213C78DA0AB8D4D0519(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnInterrupted_C0C8D6154F09B4253C00FCABACAA54B8(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyBegin_397ECC6046FC11B306E744B3095BFB3B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyBegin_397ECC6046FC11B306E744B30BA99144(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyBegin_397ECC6046FC11B306E744B3D247346B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyBegin_4C3A33AD4D9E8213C78DA0AB8D4D0519(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyBegin_C0C8D6154F09B4253C00FCABACAA54B8(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyEnd_397ECC6046FC11B306E744B3095BFB3B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyEnd_397ECC6046FC11B306E744B30BA99144(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyEnd_397ECC6046FC11B306E744B3D247346B(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyEnd_4C3A33AD4D9E8213C78DA0AB8D4D0519(NotifyName) end

---@param NotifyName FName
function ADemonSpider_BP_C:OnNotifyEnd_C0C8D6154F09B4253C00FCABACAA54B8(NotifyName) end

---@param Actor AActor
---@param Angle float
---@param Distance float
function ADemonSpider_BP_C:ProjectActorPositionOnTrack(Actor, Angle, Distance) end

---@param Angle float
---@param Distance float
function ADemonSpider_BP_C:ProjectPlayerPositionOnTrack(Angle, Distance) end

---@param Pos FVector
---@param Angle float
---@param Distance float
function ADemonSpider_BP_C:ProjectVectorPositionOnTrack(Pos, Angle, Distance) end

function ADemonSpider_BP_C:QuickSnapTL__FinishedFunc() end

function ADemonSpider_BP_C:QuickSnapTL__UpdateFunc() end

---@param Duration float
function ADemonSpider_BP_C:QuickSnapToTrack(Duration) end

function ADemonSpider_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ADemonSpider_BP_C:ReceiveTick(DeltaSeconds) end

---@param Should boolean
function ADemonSpider_BP_C:ShouldGoOverMiddle(Should) end

---@param _ boolean
function ADemonSpider_BP_C:ShouldTurnAround(_) end

---@param Radius float
---@param Position FVector
function ADemonSpider_BP_C:SpawnMagmaPuddle(Radius, Position) end

function ADemonSpider_BP_C:TemporaryIntangibility() end

function ADemonSpider_BP_C:TickBehaviour() end

function ADemonSpider_BP_C:magnetisespiderTotrack() end

ADemonSpider_BP_C['Chase Player'] = function(self) end

ADemonSpider_BP_C['Should Move Towards Player'] = function(self) end

ADemonSpider_BP_C['Update Rotation'] = function(self) end
