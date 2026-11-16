---@meta

---@class UCookingPot_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
local UCookingPot_WeaponScript_C = {}

function UCookingPot_WeaponScript_C:AltAttackPressed() end

function UCookingPot_WeaponScript_C:CustomEvent_0() end

---@param EntryPoint int32
function UCookingPot_WeaponScript_C:ExecuteUbergraph_CookingPot_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UCookingPot_WeaponScript_C:OnBlendOut_7B5D32204F1857EDA6D0DE950CC63867(NotifyName) end

---@param NotifyName FName
function UCookingPot_WeaponScript_C:OnCompleted_7B5D32204F1857EDA6D0DE950CC63867(NotifyName) end

---@param NotifyName FName
function UCookingPot_WeaponScript_C:OnInterrupted_7B5D32204F1857EDA6D0DE950CC63867(NotifyName) end

---@param NotifyName FName
function UCookingPot_WeaponScript_C:OnNotifyBegin_7B5D32204F1857EDA6D0DE950CC63867(NotifyName) end

---@param NotifyName FName
function UCookingPot_WeaponScript_C:OnNotifyEnd_7B5D32204F1857EDA6D0DE950CC63867(NotifyName) end

function UCookingPot_WeaponScript_C:ResetForNextlevel() end

---@param Amount float
function UCookingPot_WeaponScript_C:WeaponGainedXP(Amount) end

---@param Level int32
---@param WeaponItemData UFS_ItemData_C
function UCookingPot_WeaponScript_C:WeaponLevelledUp(Level, WeaponItemData) end
