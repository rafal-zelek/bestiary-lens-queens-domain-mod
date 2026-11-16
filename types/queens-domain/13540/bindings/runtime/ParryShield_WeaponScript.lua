---@meta

---@class UParryShield_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_Force_1D17A96840CDB91D6BC0ECAC639797A8 float
---@field Timeline_0__Direction_1D17A96840CDB91D6BC0ECAC639797A8 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field SecondaryAttackRunning boolean
---@field ['Parry Active'] boolean
---@field ['Parry Power'] float
---@field ParryDashTarget AActor
---@field ParryDashDirection FVector
local UParryShield_WeaponScript_C = {}

function UParryShield_WeaponScript_C:AltAttackPressed() end

---@param Applier AActor
---@param Source_Pos FVector
---@param Projectile boolean
function UParryShield_WeaponScript_C:DoParry(Applier, Source_Pos, Projectile) end

---@param EntryPoint int32
function UParryShield_WeaponScript_C:ExecuteUbergraph_ParryShield_WeaponScript(EntryPoint) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UParryShield_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnBlendOut_E49BE88C456C30E752652A86AA9A537F(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnBlendOut_FE6E237744AA36220184A7A84B5DD8C1(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnCompleted_E49BE88C456C30E752652A86AA9A537F(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnCompleted_FE6E237744AA36220184A7A84B5DD8C1(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnInterrupted_E49BE88C456C30E752652A86AA9A537F(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnInterrupted_FE6E237744AA36220184A7A84B5DD8C1(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnNotifyBegin_E49BE88C456C30E752652A86AA9A537F(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnNotifyBegin_FE6E237744AA36220184A7A84B5DD8C1(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnNotifyEnd_E49BE88C456C30E752652A86AA9A537F(NotifyName) end

---@param NotifyName FName
function UParryShield_WeaponScript_C:OnNotifyEnd_FE6E237744AA36220184A7A84B5DD8C1(NotifyName) end

function UParryShield_WeaponScript_C:ReceiveBeginPlay() end

function UParryShield_WeaponScript_C:Timeline_0__FinishedFunc() end

function UParryShield_WeaponScript_C:Timeline_0__UpdateFunc() end

UParryShield_WeaponScript_C['Cancel Retaliation Dash'] = function(self) end

---@param Hit FHitResult
---@param Damage_To_Apply FFB_DamageAttributeSet
---@param Applier AActor
---@param Hit_Location FVector
---@param Hit_Location_Valid boolean
---@param Nullify_Damage boolean
---@param Received_Damage_Reduction float
UParryShield_WeaponScript_C['Handle Player Took Damage'] = function(self, Hit, Damage_To_Apply, Applier, Hit_Location, Hit_Location_Valid, Nullify_Damage, Received_Damage_Reduction) end
