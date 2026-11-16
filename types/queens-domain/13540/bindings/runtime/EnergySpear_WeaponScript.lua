---@meta

---@class UEnergySpear_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Alt Attack Running'] boolean
---@field ['ConsumedA Cell'] boolean
local UEnergySpear_WeaponScript_C = {}

function UEnergySpear_WeaponScript_C:AltAttackPressed() end

function UEnergySpear_WeaponScript_C:AttackReleased() end

---@param EntryPoint int32
function UEnergySpear_WeaponScript_C:ExecuteUbergraph_EnergySpear_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnBlendOut_42AFF89A4651234A7B2C7A9141F35736(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnBlendOut_BD1CAC044B5E91199E021CBB4460501D(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnBlendOut_D97A09CC4935F9AAE593E480888F4D8F(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnCompleted_42AFF89A4651234A7B2C7A9141F35736(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnCompleted_BD1CAC044B5E91199E021CBB4460501D(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnCompleted_D97A09CC4935F9AAE593E480888F4D8F(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnInterrupted_42AFF89A4651234A7B2C7A9141F35736(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnInterrupted_BD1CAC044B5E91199E021CBB4460501D(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnInterrupted_D97A09CC4935F9AAE593E480888F4D8F(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnNotifyBegin_42AFF89A4651234A7B2C7A9141F35736(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnNotifyBegin_BD1CAC044B5E91199E021CBB4460501D(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnNotifyBegin_D97A09CC4935F9AAE593E480888F4D8F(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnNotifyEnd_42AFF89A4651234A7B2C7A9141F35736(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnNotifyEnd_BD1CAC044B5E91199E021CBB4460501D(NotifyName) end

---@param NotifyName FName
function UEnergySpear_WeaponScript_C:OnNotifyEnd_D97A09CC4935F9AAE593E480888F4D8F(NotifyName) end
