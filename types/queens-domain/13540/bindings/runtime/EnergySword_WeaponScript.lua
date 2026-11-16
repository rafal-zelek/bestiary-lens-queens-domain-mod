---@meta

---@class UEnergySword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['ConsumedA Cell'] boolean
---@field ['Alt Attack Running'] boolean
local UEnergySword_WeaponScript_C = {}

function UEnergySword_WeaponScript_C:AltAttackPressed() end

function UEnergySword_WeaponScript_C:AttackReleased() end

---@param EntryPoint int32
function UEnergySword_WeaponScript_C:ExecuteUbergraph_EnergySword_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnBlendOut_74429D264FBE248515A3E08E7F5119E3(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnBlendOut_840D2BAC44D2B11587B90F9E4D350AC5(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnBlendOut_D0393F71454CD04ECD5FC99AF1147C09(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnCompleted_74429D264FBE248515A3E08E7F5119E3(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnCompleted_840D2BAC44D2B11587B90F9E4D350AC5(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnCompleted_D0393F71454CD04ECD5FC99AF1147C09(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnInterrupted_74429D264FBE248515A3E08E7F5119E3(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnInterrupted_840D2BAC44D2B11587B90F9E4D350AC5(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnInterrupted_D0393F71454CD04ECD5FC99AF1147C09(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnNotifyBegin_74429D264FBE248515A3E08E7F5119E3(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnNotifyBegin_840D2BAC44D2B11587B90F9E4D350AC5(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnNotifyBegin_D0393F71454CD04ECD5FC99AF1147C09(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnNotifyEnd_74429D264FBE248515A3E08E7F5119E3(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnNotifyEnd_840D2BAC44D2B11587B90F9E4D350AC5(NotifyName) end

---@param NotifyName FName
function UEnergySword_WeaponScript_C:OnNotifyEnd_D0393F71454CD04ECD5FC99AF1147C09(NotifyName) end
