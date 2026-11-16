---@meta

---@class UGreatSpear_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TargetRange float
---@field AltAttackRunning boolean
---@field VisComp UStaticMeshComponent
---@field TargetPos FVector
---@field TargetActor AActor
local UGreatSpear_WeaponScript_C = {}

function UGreatSpear_WeaponScript_C:AltAttackPressed() end

function UGreatSpear_WeaponScript_C:AttackPressed() end

function UGreatSpear_WeaponScript_C:CancelAllAttacks() end

---@param EntryPoint int32
function UGreatSpear_WeaponScript_C:ExecuteUbergraph_GreatSpear_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UGreatSpear_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UGreatSpear_WeaponScript_C:OnBlendOut_2D2555B7449599E5506D59B3604BC370(NotifyName) end

---@param NotifyName FName
function UGreatSpear_WeaponScript_C:OnCompleted_2D2555B7449599E5506D59B3604BC370(NotifyName) end

---@param NotifyName FName
function UGreatSpear_WeaponScript_C:OnInterrupted_2D2555B7449599E5506D59B3604BC370(NotifyName) end

---@param NotifyName FName
function UGreatSpear_WeaponScript_C:OnNotifyBegin_2D2555B7449599E5506D59B3604BC370(NotifyName) end

---@param NotifyName FName
function UGreatSpear_WeaponScript_C:OnNotifyEnd_2D2555B7449599E5506D59B3604BC370(NotifyName) end

function UGreatSpear_WeaponScript_C:SetTarget() end
