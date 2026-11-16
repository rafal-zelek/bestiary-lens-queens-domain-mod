---@meta

---@class UZweihander_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackActive boolean
---@field AOEDamage FFB_DamageAttributeSet
local UZweihander_WeaponScript_C = {}

function UZweihander_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UZweihander_WeaponScript_C:ExecuteUbergraph_Zweihander_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UZweihander_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UZweihander_WeaponScript_C:OnBlendOut_CFE550664F1AC015DDC05EB04FB4D29E(NotifyName) end

---@param NotifyName FName
function UZweihander_WeaponScript_C:OnCompleted_CFE550664F1AC015DDC05EB04FB4D29E(NotifyName) end

---@param NotifyName FName
function UZweihander_WeaponScript_C:OnInterrupted_CFE550664F1AC015DDC05EB04FB4D29E(NotifyName) end

---@param NotifyName FName
function UZweihander_WeaponScript_C:OnNotifyBegin_CFE550664F1AC015DDC05EB04FB4D29E(NotifyName) end

---@param NotifyName FName
function UZweihander_WeaponScript_C:OnNotifyEnd_CFE550664F1AC015DDC05EB04FB4D29E(NotifyName) end

function UZweihander_WeaponScript_C:ReceiveBeginPlay() end
