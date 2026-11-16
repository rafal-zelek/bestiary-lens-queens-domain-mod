---@meta

---@class UEnergyChargeLogic_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentPowerCharge float
---@field PlayerConfig UPlayerBalance_C
---@field PowerChargeStartTime float
---@field CellCharged FEnergyChargeLogic_CCellCharged
---@field FullCellsConsumed FEnergyChargeLogic_CFullCellsConsumed
---@field ChargeAllowedTime float
---@field FailedConsumption FEnergyChargeLogic_CFailedConsumption
---@field ErrorChargeStartTime float
local UEnergyChargeLogic_C = {}

function UEnergyChargeLogic_C:CellCharged__DelegateSignature() end

function UEnergyChargeLogic_C:ErrorConsumption() end

---@param EntryPoint int32
function UEnergyChargeLogic_C:ExecuteUbergraph_EnergyChargeLogic(EntryPoint) end

function UEnergyChargeLogic_C:FailedConsumption__DelegateSignature() end

---@param Cells int32
function UEnergyChargeLogic_C:FullCellsConsumed__DelegateSignature(Cells) end

---@param Unlocked boolean
function UEnergyChargeLogic_C:IsEnergyUnlocked(Unlocked) end

---@param DeltaSeconds float
function UEnergyChargeLogic_C:ReceiveTick(DeltaSeconds) end

function UEnergyChargeLogic_C:Refresh() end

---@param Amount float
---@param Charge_Delay float
---@param Consumed boolean
function UEnergyChargeLogic_C:TryConsumeCharge(Amount, Charge_Delay, Consumed) end

---@param Charge float
---@param CanConsume boolean
UEnergyChargeLogic_C['Can Consume Charge'] = function(self, Charge, CanConsume) end
