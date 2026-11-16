---@meta

---@class UWoodClub_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field SlamMontage UAnimMontage
---@field SlamImpactSFX USoundBase
local UWoodClub_WeaponScript_C = {}

function UWoodClub_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UWoodClub_WeaponScript_C:ExecuteUbergraph_WoodClub_WeaponScript(EntryPoint) end

function UWoodClub_WeaponScript_C:Impact() end

---@param NotifyName FName
function UWoodClub_WeaponScript_C:OnBlendOut_0BB97781428F97300B277C8E4F74D535(NotifyName) end

---@param NotifyName FName
function UWoodClub_WeaponScript_C:OnCompleted_0BB97781428F97300B277C8E4F74D535(NotifyName) end

---@param NotifyName FName
function UWoodClub_WeaponScript_C:OnInterrupted_0BB97781428F97300B277C8E4F74D535(NotifyName) end

---@param NotifyName FName
function UWoodClub_WeaponScript_C:OnNotifyBegin_0BB97781428F97300B277C8E4F74D535(NotifyName) end

---@param NotifyName FName
function UWoodClub_WeaponScript_C:OnNotifyEnd_0BB97781428F97300B277C8E4F74D535(NotifyName) end
