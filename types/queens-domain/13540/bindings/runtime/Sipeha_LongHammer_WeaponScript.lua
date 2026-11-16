---@meta

---@class USipeha_LongHammer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttackCharging boolean
---@field SecondaryAttackRunning boolean
---@field SlamImpactSFX USoundBase
---@field SlamMontage UAnimMontage
---@field CalculatedAltFireMult float
local USipeha_LongHammer_WeaponScript_C = {}

function USipeha_LongHammer_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function USipeha_LongHammer_WeaponScript_C:ExecuteUbergraph_Sipeha_LongHammer_WeaponScript(EntryPoint) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnBlendOut_DC7415A349AEC0185BF7018FA6CE0FCD(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnBlendOut_DD0F596F4DD08021A01FECB3F814CE17(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnCompleted_DC7415A349AEC0185BF7018FA6CE0FCD(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnCompleted_DD0F596F4DD08021A01FECB3F814CE17(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnInterrupted_DC7415A349AEC0185BF7018FA6CE0FCD(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnInterrupted_DD0F596F4DD08021A01FECB3F814CE17(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnNotifyBegin_DC7415A349AEC0185BF7018FA6CE0FCD(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnNotifyBegin_DD0F596F4DD08021A01FECB3F814CE17(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnNotifyEnd_DC7415A349AEC0185BF7018FA6CE0FCD(NotifyName) end

---@param NotifyName FName
function USipeha_LongHammer_WeaponScript_C:OnNotifyEnd_DD0F596F4DD08021A01FECB3F814CE17(NotifyName) end
