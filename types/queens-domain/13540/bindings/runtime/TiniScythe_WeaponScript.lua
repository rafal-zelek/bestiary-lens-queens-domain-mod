---@meta

---@class UTiniScythe_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAbilityPoints float
---@field HammerMode boolean
---@field CurrentHammerVisChargeCount int32
---@field BaseCombo TArray<FWeaponMeleeComboEntry>
---@field HammerCombo TArray<FWeaponMeleeComboEntry>
---@field IsATiniScythe boolean
---@field FullyChargedAttack boolean
---@field HammerChargedAttackMontage UAnimMontage
---@field ScytheChargedAttackMontage UAnimMontage
local UTiniScythe_WeaponScript_C = {}

---@param Amt float
function UTiniScythe_WeaponScript_C:AddToCharge(Amt) end

function UTiniScythe_WeaponScript_C:AltAttackPressed() end

function UTiniScythe_WeaponScript_C:AttackReleased() end

function UTiniScythe_WeaponScript_C:ChargedHammerAttack() end

function UTiniScythe_WeaponScript_C:ChargedScytheAttack() end

---@param EntryPoint int32
function UTiniScythe_WeaponScript_C:ExecuteUbergraph_TiniScythe_WeaponScript(EntryPoint) end

function UTiniScythe_WeaponScript_C:GainedHammerCharge() end

---@param Damage_Types FGameplayTagContainer
function UTiniScythe_WeaponScript_C:GetCurrentDamageTypeTags(Damage_Types) end

---@param Count int32
function UTiniScythe_WeaponScript_C:GetCurrentHammerChargeCount(Count) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UTiniScythe_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnBlendOut_09B16D8C471F6A6E1E734085C624ACAA(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnBlendOut_2C12F80A477DB4381CC00A81C0B039DE(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnBlendOut_3D6A06DC42BCE3FC8E78E2A221BF9CBD(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnBlendOut_A096613F424A7B37B7132DAF10BCFD66(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnBlendOut_B29AC4FD43695ADDECBA03B781A8D39C(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnBlendOut_EAC903FB41415C6D2F6EA5BE4777036B(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnCompleted_09B16D8C471F6A6E1E734085C624ACAA(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnCompleted_2C12F80A477DB4381CC00A81C0B039DE(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnCompleted_3D6A06DC42BCE3FC8E78E2A221BF9CBD(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnCompleted_A096613F424A7B37B7132DAF10BCFD66(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnCompleted_B29AC4FD43695ADDECBA03B781A8D39C(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnCompleted_EAC903FB41415C6D2F6EA5BE4777036B(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnInterrupted_09B16D8C471F6A6E1E734085C624ACAA(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnInterrupted_2C12F80A477DB4381CC00A81C0B039DE(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnInterrupted_3D6A06DC42BCE3FC8E78E2A221BF9CBD(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnInterrupted_A096613F424A7B37B7132DAF10BCFD66(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnInterrupted_B29AC4FD43695ADDECBA03B781A8D39C(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnInterrupted_EAC903FB41415C6D2F6EA5BE4777036B(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyBegin_09B16D8C471F6A6E1E734085C624ACAA(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyBegin_2C12F80A477DB4381CC00A81C0B039DE(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyBegin_3D6A06DC42BCE3FC8E78E2A221BF9CBD(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyBegin_A096613F424A7B37B7132DAF10BCFD66(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyBegin_B29AC4FD43695ADDECBA03B781A8D39C(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyBegin_EAC903FB41415C6D2F6EA5BE4777036B(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyEnd_09B16D8C471F6A6E1E734085C624ACAA(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyEnd_2C12F80A477DB4381CC00A81C0B039DE(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyEnd_3D6A06DC42BCE3FC8E78E2A221BF9CBD(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyEnd_A096613F424A7B37B7132DAF10BCFD66(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyEnd_B29AC4FD43695ADDECBA03B781A8D39C(NotifyName) end

---@param NotifyName FName
function UTiniScythe_WeaponScript_C:OnNotifyEnd_EAC903FB41415C6D2F6EA5BE4777036B(NotifyName) end

function UTiniScythe_WeaponScript_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UTiniScythe_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function UTiniScythe_WeaponScript_C:ResetCharge() end

function UTiniScythe_WeaponScript_C:UpdateChargeFX() end

function UTiniScythe_WeaponScript_C:WriteChargeDataToSaveFile() end
