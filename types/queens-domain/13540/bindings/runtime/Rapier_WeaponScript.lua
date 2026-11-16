---@meta

---@class URapier_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Alt Attack Running'] boolean
---@field ['Stabs Remaining'] int32
---@field ['Alt Attack charging'] boolean
local URapier_WeaponScript_C = {}

function URapier_WeaponScript_C:AltAttackPressed() end

function URapier_WeaponScript_C:AltAttackReleased() end

function URapier_WeaponScript_C:AttackPressed() end

function URapier_WeaponScript_C:AttackReleased() end

function URapier_WeaponScript_C:CancelAllAttacks() end

function URapier_WeaponScript_C:DoAltAttackStabLoop() end

---@param EntryPoint int32
function URapier_WeaponScript_C:ExecuteUbergraph_Rapier_WeaponScript(EntryPoint) end

function URapier_WeaponScript_C:LeftHand() end

---@param NotifyName FName
function URapier_WeaponScript_C:OnBlendOut_36ADFE2749D4514030D365AC31DCC44C(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnBlendOut_C26B6A32439E897ED02706BB206439BE(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnBlendOut_E3C5414446CA7E5723BCAB941BD5590E(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnCompleted_36ADFE2749D4514030D365AC31DCC44C(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnCompleted_C26B6A32439E897ED02706BB206439BE(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnCompleted_E3C5414446CA7E5723BCAB941BD5590E(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnInterrupted_36ADFE2749D4514030D365AC31DCC44C(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnInterrupted_C26B6A32439E897ED02706BB206439BE(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnInterrupted_E3C5414446CA7E5723BCAB941BD5590E(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnNotifyBegin_36ADFE2749D4514030D365AC31DCC44C(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnNotifyBegin_C26B6A32439E897ED02706BB206439BE(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnNotifyBegin_E3C5414446CA7E5723BCAB941BD5590E(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnNotifyEnd_36ADFE2749D4514030D365AC31DCC44C(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnNotifyEnd_C26B6A32439E897ED02706BB206439BE(NotifyName) end

---@param NotifyName FName
function URapier_WeaponScript_C:OnNotifyEnd_E3C5414446CA7E5723BCAB941BD5590E(NotifyName) end

---@param DeltaSeconds float
function URapier_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function URapier_WeaponScript_C:SetUpAltStabStats() end

URapier_WeaponScript_C['Slow Player'] = function(self) end

URapier_WeaponScript_C['Start Alt Attack'] = function(self) end

URapier_WeaponScript_C['cancel thing'] = function(self) end
