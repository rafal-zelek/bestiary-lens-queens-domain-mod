---@meta

---@class USaoSword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CalculatedAltFireMult float
local USaoSword_WeaponScript_C = {}

function USaoSword_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function USaoSword_WeaponScript_C:ExecuteUbergraph_SaoSword_WeaponScript(EntryPoint) end

---@param Output FFB_DamageAttributeSet
function USaoSword_WeaponScript_C:GetAltDamage(Output) end

---@param NotifyName FName
function USaoSword_WeaponScript_C:OnBlendOut_FECBE5A8453F5C6449B53B8C7165616D(NotifyName) end

---@param NotifyName FName
function USaoSword_WeaponScript_C:OnCompleted_FECBE5A8453F5C6449B53B8C7165616D(NotifyName) end

---@param NotifyName FName
function USaoSword_WeaponScript_C:OnInterrupted_FECBE5A8453F5C6449B53B8C7165616D(NotifyName) end

---@param NotifyName FName
function USaoSword_WeaponScript_C:OnNotifyBegin_FECBE5A8453F5C6449B53B8C7165616D(NotifyName) end

---@param NotifyName FName
function USaoSword_WeaponScript_C:OnNotifyEnd_FECBE5A8453F5C6449B53B8C7165616D(NotifyName) end
