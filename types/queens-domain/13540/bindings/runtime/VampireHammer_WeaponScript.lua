---@meta

---@class UVampireHammer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Target AEnemyBase_C
---@field CurrentSuckLine UNiagaraComponent
local UVampireHammer_WeaponScript_C = {}

function UVampireHammer_WeaponScript_C:AltAttackPressed() end

function UVampireHammer_WeaponScript_C:AltAttackReleased() end

---@param EntryPoint int32
function UVampireHammer_WeaponScript_C:ExecuteUbergraph_VampireHammer_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UVampireHammer_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnBlendOut_41F237BA4867A94C508116A59418E5D9(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnBlendOut_C20B0624497267EAD3C723BDC8070BBD(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnCompleted_41F237BA4867A94C508116A59418E5D9(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnCompleted_C20B0624497267EAD3C723BDC8070BBD(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnInterrupted_41F237BA4867A94C508116A59418E5D9(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnInterrupted_C20B0624497267EAD3C723BDC8070BBD(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnNotifyBegin_41F237BA4867A94C508116A59418E5D9(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnNotifyBegin_C20B0624497267EAD3C723BDC8070BBD(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnNotifyEnd_41F237BA4867A94C508116A59418E5D9(NotifyName) end

---@param NotifyName FName
function UVampireHammer_WeaponScript_C:OnNotifyEnd_C20B0624497267EAD3C723BDC8070BBD(NotifyName) end

function UVampireHammer_WeaponScript_C:SecondaryStealHealthFromTarget() end
