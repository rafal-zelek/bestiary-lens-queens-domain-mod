---@meta

---@class URustedGreatSword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
local URustedGreatSword_WeaponScript_C = {}

function URustedGreatSword_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function URustedGreatSword_WeaponScript_C:ExecuteUbergraph_RustedGreatSword_WeaponScript(EntryPoint) end

---@param NotifyName FName
function URustedGreatSword_WeaponScript_C:OnBlendOut_001DE7194D71DC9BF5F5F5AB8E220F0E(NotifyName) end

---@param NotifyName FName
function URustedGreatSword_WeaponScript_C:OnCompleted_001DE7194D71DC9BF5F5F5AB8E220F0E(NotifyName) end

---@param NotifyName FName
function URustedGreatSword_WeaponScript_C:OnInterrupted_001DE7194D71DC9BF5F5F5AB8E220F0E(NotifyName) end

---@param NotifyName FName
function URustedGreatSword_WeaponScript_C:OnNotifyBegin_001DE7194D71DC9BF5F5F5AB8E220F0E(NotifyName) end

---@param NotifyName FName
function URustedGreatSword_WeaponScript_C:OnNotifyEnd_001DE7194D71DC9BF5F5F5AB8E220F0E(NotifyName) end

function URustedGreatSword_WeaponScript_C:ReceiveBeginPlay() end
