---@meta

---@class UKing_Hammer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltFireMult float
---@field DOingAlt boolean
---@field SlamAOEDamage FFB_DamageAttributeSet
local UKing_Hammer_WeaponScript_C = {}

function UKing_Hammer_WeaponScript_C:AltAttackPressed() end

function UKing_Hammer_WeaponScript_C:CancelAllAttacks() end

function UKing_Hammer_WeaponScript_C:DoAltAttackDamage() end

---@param EntryPoint int32
function UKing_Hammer_WeaponScript_C:ExecuteUbergraph_King_Hammer_WeaponScript(EntryPoint) end

function UKing_Hammer_WeaponScript_C:GetAttackAOE() end

---@param NotifyName FName
function UKing_Hammer_WeaponScript_C:OnBlendOut_01E3DF4046ADAC388FAE2494AA940610(NotifyName) end

---@param NotifyName FName
function UKing_Hammer_WeaponScript_C:OnCompleted_01E3DF4046ADAC388FAE2494AA940610(NotifyName) end

---@param NotifyName FName
function UKing_Hammer_WeaponScript_C:OnInterrupted_01E3DF4046ADAC388FAE2494AA940610(NotifyName) end

---@param NotifyName FName
function UKing_Hammer_WeaponScript_C:OnNotifyBegin_01E3DF4046ADAC388FAE2494AA940610(NotifyName) end

---@param NotifyName FName
function UKing_Hammer_WeaponScript_C:OnNotifyEnd_01E3DF4046ADAC388FAE2494AA940610(NotifyName) end

---@param DeltaSeconds float
function UKing_Hammer_WeaponScript_C:ReceiveTick(DeltaSeconds) end

---@param Base_Dmg FFB_DamageAttributeSet
---@param Suppressed_Dmg FFB_DamageAttributeSet
function UKing_Hammer_WeaponScript_C:SuppressAudioForAltAttackDamage(Base_Dmg, Suppressed_Dmg) end
