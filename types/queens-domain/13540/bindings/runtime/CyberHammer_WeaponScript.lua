---@meta

---@class UCyberHammer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DOingAlt boolean
---@field SlamDamage FFB_DamageAttributeSet
local UCyberHammer_WeaponScript_C = {}

function UCyberHammer_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UCyberHammer_WeaponScript_C:ExecuteUbergraph_CyberHammer_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UCyberHammer_WeaponScript_C:OnBlendOut_ECFC30BE46914C43631BD68EDB568603(NotifyName) end

---@param NotifyName FName
function UCyberHammer_WeaponScript_C:OnCompleted_ECFC30BE46914C43631BD68EDB568603(NotifyName) end

---@param NotifyName FName
function UCyberHammer_WeaponScript_C:OnInterrupted_ECFC30BE46914C43631BD68EDB568603(NotifyName) end

---@param NotifyName FName
function UCyberHammer_WeaponScript_C:OnNotifyBegin_ECFC30BE46914C43631BD68EDB568603(NotifyName) end

---@param NotifyName FName
function UCyberHammer_WeaponScript_C:OnNotifyEnd_ECFC30BE46914C43631BD68EDB568603(NotifyName) end
