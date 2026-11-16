---@meta

---@class ASlimer_base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Floorvomitpoint USceneComponent
---@field Audio UAudioComponent
---@field vomitpoint USceneComponent
---@field HitboxGrowTL_scale_A0D9EE054AF0D1D20F58F3ADA775957B float
---@field HitboxGrowTL__Direction_A0D9EE054AF0D1D20F58F3ADA775957B ETimelineDirection::Type
---@field HitboxGrowTL UTimelineComponent
---@field EndAttackTimer FTimerHandle
---@field currentpfx UNiagaraComponent
---@field CurrentAttackSound UAudioComponent
---@field VomitSystem UNiagaraSystem
---@field CurrentFloorPFX UNiagaraComponent
---@field FloorVomitSystem UNiagaraSystem
---@field VomitSound USoundBase
---@field MinSlimingDuration float
---@field MaxSlimingDuration float
---@field AttackPlayRate float
---@field HitboxEndScale FVector
local ASlimer_base_BP_C = {}

---@param Damaged boolean
function ASlimer_base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASlimer_base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ASlimer_base_BP_C:CheckChase() end

function ASlimer_base_BP_C:EndAttack() end

---@param Mode EnemyBehaviourMode::Type
function ASlimer_base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ASlimer_base_BP_C:ExecuteUbergraph_Slimer_base_BP(EntryPoint) end

function ASlimer_base_BP_C:HitboxGrowTL__FinishedFunc() end

function ASlimer_base_BP_C:HitboxGrowTL__UpdateFunc() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ASlimer_base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnBlendOut_18713BCB4D13C5387C75FDBF8C2BDBFA(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnBlendOut_252F41CD49CAE6AD6024DA8CA8038A67(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnBlendOut_A772AF7A4249645C56EFDD9031B8826C(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnBlendOut_ABE6D9B343531A1AE9188E82188A6ECC(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnCompleted_18713BCB4D13C5387C75FDBF8C2BDBFA(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnCompleted_252F41CD49CAE6AD6024DA8CA8038A67(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnCompleted_A772AF7A4249645C56EFDD9031B8826C(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnCompleted_ABE6D9B343531A1AE9188E82188A6ECC(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnInterrupted_18713BCB4D13C5387C75FDBF8C2BDBFA(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnInterrupted_252F41CD49CAE6AD6024DA8CA8038A67(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnInterrupted_A772AF7A4249645C56EFDD9031B8826C(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnInterrupted_ABE6D9B343531A1AE9188E82188A6ECC(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnNotifyBegin_18713BCB4D13C5387C75FDBF8C2BDBFA(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnNotifyBegin_252F41CD49CAE6AD6024DA8CA8038A67(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnNotifyBegin_A772AF7A4249645C56EFDD9031B8826C(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnNotifyBegin_ABE6D9B343531A1AE9188E82188A6ECC(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnNotifyEnd_18713BCB4D13C5387C75FDBF8C2BDBFA(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnNotifyEnd_252F41CD49CAE6AD6024DA8CA8038A67(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnNotifyEnd_A772AF7A4249645C56EFDD9031B8826C(NotifyName) end

---@param NotifyName FName
function ASlimer_base_BP_C:OnNotifyEnd_ABE6D9B343531A1AE9188E82188A6ECC(NotifyName) end

---@param Duration float
function ASlimer_base_BP_C:Paralyze(Duration) end

function ASlimer_base_BP_C:ReceiveBeginPlay() end

function ASlimer_base_BP_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function ASlimer_base_BP_C:ReceiveTick(DeltaSeconds) end

function ASlimer_base_BP_C:Resetfx() end

function ASlimer_base_BP_C:SpawnFloorVomit() end

function ASlimer_base_BP_C:SpawnVomit() end

function ASlimer_base_BP_C:SpawnVomitSound() end

function ASlimer_base_BP_C:Stagger() end

function ASlimer_base_BP_C:StopAllMovement() end

function ASlimer_base_BP_C:TickBehaviour() end

function ASlimer_base_BP_C:TickHitboxes() end

---@param InputPin USphereComponent
---@param PositionOverride FVector
---@param UseOverride boolean
---@param Hit boolean
function ASlimer_base_BP_C:TickIndividualHitbox(InputPin, PositionOverride, UseOverride, Hit) end

ASlimer_base_BP_C['Update Rotation'] = function(self) end
