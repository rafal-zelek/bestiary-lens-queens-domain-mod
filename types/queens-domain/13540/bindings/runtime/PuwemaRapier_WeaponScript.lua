---@meta

---@class UPuwemaRapier_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CalculatedAltFireMult float
local UPuwemaRapier_WeaponScript_C = {}

function UPuwemaRapier_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UPuwemaRapier_WeaponScript_C:ExecuteUbergraph_PuwemaRapier_WeaponScript(EntryPoint) end

---@param Output FFB_DamageAttributeSet
function UPuwemaRapier_WeaponScript_C:GetAltDamage(Output) end

---@param NotifyName FName
function UPuwemaRapier_WeaponScript_C:OnBlendOut_41DD1730447A0F63D19349BCEEB65C98(NotifyName) end

---@param NotifyName FName
function UPuwemaRapier_WeaponScript_C:OnCompleted_41DD1730447A0F63D19349BCEEB65C98(NotifyName) end

---@param NotifyName FName
function UPuwemaRapier_WeaponScript_C:OnInterrupted_41DD1730447A0F63D19349BCEEB65C98(NotifyName) end

---@param NotifyName FName
function UPuwemaRapier_WeaponScript_C:OnNotifyBegin_41DD1730447A0F63D19349BCEEB65C98(NotifyName) end

---@param NotifyName FName
function UPuwemaRapier_WeaponScript_C:OnNotifyEnd_41DD1730447A0F63D19349BCEEB65C98(NotifyName) end
