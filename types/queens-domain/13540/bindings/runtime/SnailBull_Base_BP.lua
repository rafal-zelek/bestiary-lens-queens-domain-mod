---@meta

---@class ASnailBull_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field HitboxRear1 USphereComponent
---@field HitboxRear USphereComponent
---@field TrapMontage UAnimMontage
---@field BubbleTimer FTimerHandle
---@field StartDirection FVector
---@field EndCharge boolean
---@field ChargeActive boolean
---@field DrillSound UAudioComponent
local ASnailBull_Base_BP_C = {}

---@param Damaged boolean
function ASnailBull_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASnailBull_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ASnailBull_Base_BP_C:CancelRushAttack() end

function ASnailBull_Base_BP_C:DoChargeAttack() end

---@param Mode EnemyBehaviourMode::Type
function ASnailBull_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ASnailBull_Base_BP_C:ExecuteUbergraph_SnailBull_Base_BP(EntryPoint) end

function ASnailBull_Base_BP_C:GetChargeLocationPastPlayer() end

---@param Hit FHitResult
---@param BluntResistance EnemyResistance::Type
---@param PierceResistance EnemyResistance::Type
---@param SlashResistance EnemyResistance::Type
function ASnailBull_Base_BP_C:GetDamageResistancesForHit(Hit, BluntResistance, PierceResistance, SlashResistance) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ASnailBull_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnBlendOut_B55415BF44814F35410B4F8F6AD9FC0C(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnBlendOut_EDF27512450EDE2A9C4D32B613308E53(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AA6F33F51(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AB740295D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnCompleted_B55415BF44814F35410B4F8F6AD9FC0C(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnCompleted_EDF27512450EDE2A9C4D32B613308E53(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AA6F33F51(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AB740295D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnInterrupted_B55415BF44814F35410B4F8F6AD9FC0C(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnInterrupted_EDF27512450EDE2A9C4D32B613308E53(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AA6F33F51(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AB740295D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnNotifyBegin_B55415BF44814F35410B4F8F6AD9FC0C(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnNotifyBegin_EDF27512450EDE2A9C4D32B613308E53(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AA6F33F51(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AB740295D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnNotifyEnd_B55415BF44814F35410B4F8F6AD9FC0C(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnNotifyEnd_EDF27512450EDE2A9C4D32B613308E53(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AA6F33F51(NotifyName) end

---@param NotifyName FName
function ASnailBull_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AB740295D(NotifyName) end

function ASnailBull_Base_BP_C:ReceiveBeginPlay() end

function ASnailBull_Base_BP_C:Stagger() end

function ASnailBull_Base_BP_C:StartDrillAudio() end

function ASnailBull_Base_BP_C:StartRush() end

function ASnailBull_Base_BP_C:StopDrillAudio() end

function ASnailBull_Base_BP_C:StopDrillSteeringLogic() end

function ASnailBull_Base_BP_C:StopRush() end
