---@meta

---@class UJigekiGMS_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SlamAOEDamage FFB_DamageAttributeSet
local UJigekiGMS_WeaponScript_C = {}

function UJigekiGMS_WeaponScript_C:AltAttackPressed() end

function UJigekiGMS_WeaponScript_C:DoAltAttackDamage() end

---@param EntryPoint int32
function UJigekiGMS_WeaponScript_C:ExecuteUbergraph_JigekiGMS_WeaponScript(EntryPoint) end

function UJigekiGMS_WeaponScript_C:GetAttackAOE() end

---@param NotifyName FName
function UJigekiGMS_WeaponScript_C:OnBlendOut_A9EB2DE74996C803DCE80CA2AB94EAD5(NotifyName) end

---@param NotifyName FName
function UJigekiGMS_WeaponScript_C:OnCompleted_A9EB2DE74996C803DCE80CA2AB94EAD5(NotifyName) end

---@param NotifyName FName
function UJigekiGMS_WeaponScript_C:OnInterrupted_A9EB2DE74996C803DCE80CA2AB94EAD5(NotifyName) end

---@param NotifyName FName
function UJigekiGMS_WeaponScript_C:OnNotifyBegin_A9EB2DE74996C803DCE80CA2AB94EAD5(NotifyName) end

---@param NotifyName FName
function UJigekiGMS_WeaponScript_C:OnNotifyEnd_A9EB2DE74996C803DCE80CA2AB94EAD5(NotifyName) end

---@param Base_Dmg FFB_DamageAttributeSet
---@param Suppressed_Dmg FFB_DamageAttributeSet
function UJigekiGMS_WeaponScript_C:SuppressAudioForAltAttackDamage(Base_Dmg, Suppressed_Dmg) end
