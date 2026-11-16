---@meta

---@class UKing_Spear_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['LocalDelta Seconds'] float
---@field ['Alt Attack Running'] boolean
local UKing_Spear_WeaponScript_C = {}

function UKing_Spear_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UKing_Spear_WeaponScript_C:ExecuteUbergraph_King_Spear_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UKing_Spear_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UKing_Spear_WeaponScript_C:OnBlendOut_F475C5EB4DDD7A417B8EACBC4C0F0B1C(NotifyName) end

---@param NotifyName FName
function UKing_Spear_WeaponScript_C:OnCompleted_F475C5EB4DDD7A417B8EACBC4C0F0B1C(NotifyName) end

---@param NotifyName FName
function UKing_Spear_WeaponScript_C:OnInterrupted_F475C5EB4DDD7A417B8EACBC4C0F0B1C(NotifyName) end

---@param NotifyName FName
function UKing_Spear_WeaponScript_C:OnNotifyBegin_F475C5EB4DDD7A417B8EACBC4C0F0B1C(NotifyName) end

---@param NotifyName FName
function UKing_Spear_WeaponScript_C:OnNotifyEnd_F475C5EB4DDD7A417B8EACBC4C0F0B1C(NotifyName) end

function UKing_Spear_WeaponScript_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UKing_Spear_WeaponScript_C:ReceiveTick(DeltaSeconds) end
