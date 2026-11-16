---@meta

---@class UCyberSword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Alt Attack Running'] boolean
local UCyberSword_WeaponScript_C = {}

function UCyberSword_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UCyberSword_WeaponScript_C:ExecuteUbergraph_CyberSword_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UCyberSword_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UCyberSword_WeaponScript_C:OnBlendOut_96A5B2494EC6C0F4990398BD992EC3C0(NotifyName) end

---@param NotifyName FName
function UCyberSword_WeaponScript_C:OnCompleted_96A5B2494EC6C0F4990398BD992EC3C0(NotifyName) end

---@param NotifyName FName
function UCyberSword_WeaponScript_C:OnInterrupted_96A5B2494EC6C0F4990398BD992EC3C0(NotifyName) end

---@param NotifyName FName
function UCyberSword_WeaponScript_C:OnNotifyBegin_96A5B2494EC6C0F4990398BD992EC3C0(NotifyName) end

---@param NotifyName FName
function UCyberSword_WeaponScript_C:OnNotifyEnd_96A5B2494EC6C0F4990398BD992EC3C0(NotifyName) end
