---@meta

---@class AHellSlime_base_BP_C : ASlimer_base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field currentpfx_0 UNiagaraComponent
---@field CurrentAttackSound_0 UAudioComponent
---@field CurrentFloorPFX_0 UNiagaraComponent
---@field MeleeRange float
local AHellSlime_base_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AHellSlime_base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AHellSlime_base_BP_C:CheckChase() end

---@param EntryPoint int32
function AHellSlime_base_BP_C:ExecuteUbergraph_HellSlime_base_BP(EntryPoint) end

---@param AttackIndex int32
---@param StatusType EEnemyStatusType
---@param Chance float
function AHellSlime_base_BP_C:GetStatusEffectToApply(AttackIndex, StatusType, Chance) end

function AHellSlime_base_BP_C:Melee() end

---@param NotifyName FName
function AHellSlime_base_BP_C:OnBlendOut_F3DD58724A749588D6724F9E59D81B32(NotifyName) end

---@param NotifyName FName
function AHellSlime_base_BP_C:OnCompleted_F3DD58724A749588D6724F9E59D81B32(NotifyName) end

---@param NotifyName FName
function AHellSlime_base_BP_C:OnInterrupted_F3DD58724A749588D6724F9E59D81B32(NotifyName) end

---@param NotifyName FName
function AHellSlime_base_BP_C:OnNotifyBegin_F3DD58724A749588D6724F9E59D81B32(NotifyName) end

---@param NotifyName FName
function AHellSlime_base_BP_C:OnNotifyEnd_F3DD58724A749588D6724F9E59D81B32(NotifyName) end

---@param DeltaSeconds float
function AHellSlime_base_BP_C:ReceiveTick(DeltaSeconds) end

function AHellSlime_base_BP_C:TickBehaviour() end
