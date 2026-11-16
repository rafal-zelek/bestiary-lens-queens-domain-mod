---@meta

---@class UYusukeKabob_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field AltAttackCharging boolean
---@field SecondaryAttackCombo TArray<FWeaponMeleeComboEntry>
local UYusukeKabob_WeaponScript_C = {}

function UYusukeKabob_WeaponScript_C:AltAttackPressed() end

function UYusukeKabob_WeaponScript_C:AltAttackReleased() end

function UYusukeKabob_WeaponScript_C:CancelAllAttacks() end

---@param EntryPoint int32
function UYusukeKabob_WeaponScript_C:ExecuteUbergraph_YusukeKabob_WeaponScript(EntryPoint) end

---@param Damage_Types FGameplayTagContainer
function UYusukeKabob_WeaponScript_C:GetCurrentDamageTypeTags(Damage_Types) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnBlendOut_8F2F045F40866666CFDEAEB96CC59042(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnBlendOut_923A72304B4887F65489F0B9F1D24BC6(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnCompleted_8F2F045F40866666CFDEAEB96CC59042(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnCompleted_923A72304B4887F65489F0B9F1D24BC6(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnInterrupted_8F2F045F40866666CFDEAEB96CC59042(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnInterrupted_923A72304B4887F65489F0B9F1D24BC6(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnNotifyBegin_8F2F045F40866666CFDEAEB96CC59042(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnNotifyBegin_923A72304B4887F65489F0B9F1D24BC6(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnNotifyEnd_8F2F045F40866666CFDEAEB96CC59042(NotifyName) end

---@param NotifyName FName
function UYusukeKabob_WeaponScript_C:OnNotifyEnd_923A72304B4887F65489F0B9F1D24BC6(NotifyName) end

function UYusukeKabob_WeaponScript_C:PreChargeAltPressed() end
