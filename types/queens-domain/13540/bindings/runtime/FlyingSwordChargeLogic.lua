---@meta

---@class UFlyingSwordChargeLogic_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MaxChargeCount int32
---@field ChargeCooldown float
---@field CurrentCharges int32
---@field NextChargeProgress float
---@field UsedCharge FFlyingSwordChargeLogic_CUsedCharge
---@field ChargeGained FFlyingSwordChargeLogic_CChargeGained
---@field QueuedInAirCharges int32
---@field RechargeCheat FString
---@field ChargeCountCheat FString
---@field DebuffAppliers TArray<ABallooner_Base_BP_C>
---@field CursedChargeUsed FFlyingSwordChargeLogic_CCursedChargeUsed
local UFlyingSwordChargeLogic_C = {}

function UFlyingSwordChargeLogic_C:ChargeGained__DelegateSignature() end

function UFlyingSwordChargeLogic_C:CursedChargeUsed__DelegateSignature() end

---@param EntryPoint int32
function UFlyingSwordChargeLogic_C:ExecuteUbergraph_FlyingSwordChargeLogic(EntryPoint) end

---@param MaxChargeCount int32
function UFlyingSwordChargeLogic_C:GetmaxChargeCount(MaxChargeCount) end

function UFlyingSwordChargeLogic_C:IsPlayerFalling() end

function UFlyingSwordChargeLogic_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UFlyingSwordChargeLogic_C:ReceiveTick(DeltaSeconds) end

---@param Grounded boolean
---@param Success boolean
---@param CursedUse boolean
function UFlyingSwordChargeLogic_C:TryUsingCharge(Grounded, Success, CursedUse) end

---@param Grounded boolean
function UFlyingSwordChargeLogic_C:UsedCharge__DelegateSignature(Grounded) end

UFlyingSwordChargeLogic_C['Apply Gem Curse'] = function(self) end
