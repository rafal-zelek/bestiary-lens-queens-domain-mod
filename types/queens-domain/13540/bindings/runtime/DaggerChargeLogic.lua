---@meta

---@class UDaggerChargeLogic_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChargeCooldown float
---@field CurrentCharges int32
---@field NextChargeProgress float
---@field UsedCharge FDaggerChargeLogic_CUsedCharge
---@field ChargeGained FDaggerChargeLogic_CChargeGained
---@field RechargeCheat FString
---@field DaggerProjectileType TSubclassOf<ADagger_Projectile_Base_C>
---@field DefaultDagger boolean
---@field ['Dagger Item'] TSoftObjectPtr<UFS_ItemData_C>
---@field PlayerConfig UPlayerBalance_C
---@field ThrowMontage UAnimMontage
---@field RootAnim UAnimSequence
---@field ThrowMontage_PlayRate float
---@field ['Throw Block Time'] float
---@field VisualActor TSubclassOf<AActor>
---@field ChargeAmount float
---@field ['cached Max Charge Count'] int32
---@field ['cached recharge time mult'] float
local UDaggerChargeLogic_C = {}

---@param Success boolean
function UDaggerChargeLogic_C:CanUseCharge(Success) end

function UDaggerChargeLogic_C:ChargeGained__DelegateSignature() end

---@param EntryPoint int32
function UDaggerChargeLogic_C:ExecuteUbergraph_DaggerChargeLogic(EntryPoint) end

---@param Name FName
---@param Val float
function UDaggerChargeLogic_C:GetCustomStat(Name, Val) end

---@param Damage FFB_DamageAttributeSet
function UDaggerChargeLogic_C:GetDaggerDamage(Damage) end

---@param Time float
function UDaggerChargeLogic_C:GetFullyChargedTime(Time) end

function UDaggerChargeLogic_C:GetRechargeTimeMult() end

---@param MaxChargeCount int32
function UDaggerChargeLogic_C:GetmaxChargeCount(MaxChargeCount) end

---@param ItemData UFS_ItemData_C
function UDaggerChargeLogic_C:OnItemGet(ItemData) end

function UDaggerChargeLogic_C:ReadChargeDataFromSaveFile() end

function UDaggerChargeLogic_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UDaggerChargeLogic_C:ReceiveTick(DeltaSeconds) end

function UDaggerChargeLogic_C:Refill() end

---@param Success boolean
function UDaggerChargeLogic_C:TryUsingCharge(Success) end

function UDaggerChargeLogic_C:UsedCharge__DelegateSignature() end

function UDaggerChargeLogic_C:WriteChargeDataToSaveFile() end

---@param Changed_Item UFS_ItemData_C
UDaggerChargeLogic_C['Equips changed'] = function(self, Changed_Item) end

UDaggerChargeLogic_C['Recache Stats Urgent'] = function(self) end

UDaggerChargeLogic_C['Recache Stats'] = function(self) end
