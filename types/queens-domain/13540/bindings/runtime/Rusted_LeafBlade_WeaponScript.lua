---@meta

---@class URusted_LeafBlade_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
local URusted_LeafBlade_WeaponScript_C = {}

function URusted_LeafBlade_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function URusted_LeafBlade_WeaponScript_C:ExecuteUbergraph_Rusted_LeafBlade_WeaponScript(EntryPoint) end

function URusted_LeafBlade_WeaponScript_C:LeftHand() end

---@param NotifyName FName
function URusted_LeafBlade_WeaponScript_C:OnBlendOut_F5C482B34F7D62C7F0A58F9B377BFA9A(NotifyName) end

---@param NotifyName FName
function URusted_LeafBlade_WeaponScript_C:OnCompleted_F5C482B34F7D62C7F0A58F9B377BFA9A(NotifyName) end

---@param NotifyName FName
function URusted_LeafBlade_WeaponScript_C:OnInterrupted_F5C482B34F7D62C7F0A58F9B377BFA9A(NotifyName) end

---@param NotifyName FName
function URusted_LeafBlade_WeaponScript_C:OnNotifyBegin_F5C482B34F7D62C7F0A58F9B377BFA9A(NotifyName) end

---@param NotifyName FName
function URusted_LeafBlade_WeaponScript_C:OnNotifyEnd_F5C482B34F7D62C7F0A58F9B377BFA9A(NotifyName) end

---@param DeltaSeconds float
function URusted_LeafBlade_WeaponScript_C:ReceiveTick(DeltaSeconds) end

URusted_LeafBlade_WeaponScript_C['Slow Player'] = function(self) end
