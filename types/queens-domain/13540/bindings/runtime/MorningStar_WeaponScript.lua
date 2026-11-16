---@meta

---@class UMorningStar_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttackCharging boolean
---@field SecondaryAttackRunning boolean
---@field SlamImpactSFX USoundBase
---@field SlamMontage UAnimMontage
local UMorningStar_WeaponScript_C = {}

function UMorningStar_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UMorningStar_WeaponScript_C:ExecuteUbergraph_MorningStar_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UMorningStar_WeaponScript_C:OnBlendOut_E305AFD8413A4F0B0EA634A0EA18E616(NotifyName) end

---@param NotifyName FName
function UMorningStar_WeaponScript_C:OnCompleted_E305AFD8413A4F0B0EA634A0EA18E616(NotifyName) end

---@param NotifyName FName
function UMorningStar_WeaponScript_C:OnInterrupted_E305AFD8413A4F0B0EA634A0EA18E616(NotifyName) end

---@param NotifyName FName
function UMorningStar_WeaponScript_C:OnNotifyBegin_E305AFD8413A4F0B0EA634A0EA18E616(NotifyName) end

---@param NotifyName FName
function UMorningStar_WeaponScript_C:OnNotifyEnd_E305AFD8413A4F0B0EA634A0EA18E616(NotifyName) end
