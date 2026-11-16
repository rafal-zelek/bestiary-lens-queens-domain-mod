---@meta

---@class AWheeler_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RollHitbox3 USphereComponent
---@field RollHitbox2 USphereComponent
---@field RollHitbox1 USphereComponent
---@field RollHitbox USphereComponent
---@field Timeline_8_1_65F87E394515D2E1AF288CA4807E10F9 float
---@field Timeline_8__Direction_65F87E394515D2E1AF288CA4807E10F9 ETimelineDirection::Type
---@field Timeline_8 UTimelineComponent
---@field Timeline_7_1_5EC32E9243A5A5F2AA65BEB1B3F8898D float
---@field Timeline_7__Direction_5EC32E9243A5A5F2AA65BEB1B3F8898D ETimelineDirection::Type
---@field Timeline_7 UTimelineComponent
---@field TrapMontage UAnimMontage
---@field LaserTriggerMinDist float
---@field ChanceToWheel float
---@field ShouldEndMove boolean
---@field CurrentLaser UNiagaraComponent
---@field CurrentLaserEndpoint UNiagaraComponent
---@field LastLaserHitTime float
---@field LaserLength float
---@field LaserAudio UAudioComponent
---@field MeleeMaxDist float
---@field BeamFX UNiagaraSystem
---@field BeamImpact_FX UNiagaraSystem
---@field BeamCharge_FX UNiagaraSystem
local AWheeler_Base_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AWheeler_Base_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AWheeler_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AWheeler_Base_BP_C:CancelLaser() end

function AWheeler_Base_BP_C:DoLaser() end

function AWheeler_Base_BP_C:DoSlam() end

function AWheeler_Base_BP_C:DoWheel() end

---@param EntryPoint int32
function AWheeler_Base_BP_C:ExecuteUbergraph_Wheeler_Base_BP(EntryPoint) end

---@param Array TArray<FHitResult>
---@param EndPoint FVector
function AWheeler_Base_BP_C:HitStuff(Array, EndPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AWheeler_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnBlendOut_0438CD7945405404DAFED58384B79457(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnBlendOut_058CBB5942C492351F0C7788B1BDAAA9(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnBlendOut_5704C3C3428673144529B282DB753939(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnBlendOut_D4EA18E04023F9D99C07AD8163FDD78C(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AF779077E(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnCompleted_0438CD7945405404DAFED58384B79457(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnCompleted_058CBB5942C492351F0C7788B1BDAAA9(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnCompleted_5704C3C3428673144529B282DB753939(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnCompleted_D4EA18E04023F9D99C07AD8163FDD78C(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AF779077E(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnInterrupted_0438CD7945405404DAFED58384B79457(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnInterrupted_058CBB5942C492351F0C7788B1BDAAA9(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnInterrupted_5704C3C3428673144529B282DB753939(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnInterrupted_D4EA18E04023F9D99C07AD8163FDD78C(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AF779077E(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyBegin_0438CD7945405404DAFED58384B79457(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyBegin_058CBB5942C492351F0C7788B1BDAAA9(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyBegin_5704C3C3428673144529B282DB753939(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyBegin_D4EA18E04023F9D99C07AD8163FDD78C(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AF779077E(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyEnd_0438CD7945405404DAFED58384B79457(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyEnd_058CBB5942C492351F0C7788B1BDAAA9(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyEnd_5704C3C3428673144529B282DB753939(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyEnd_D4EA18E04023F9D99C07AD8163FDD78C(NotifyName) end

---@param NotifyName FName
function AWheeler_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AF779077E(NotifyName) end

function AWheeler_Base_BP_C:ReceiveDestroyed() end

function AWheeler_Base_BP_C:Stagger() end

function AWheeler_Base_BP_C:Timeline_7__FinishedFunc() end

function AWheeler_Base_BP_C:Timeline_7__UpdateFunc() end

function AWheeler_Base_BP_C:Timeline_8__FinishedFunc() end

function AWheeler_Base_BP_C:Timeline_8__UpdateFunc() end
