---@meta

---@class UCestus_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field SecondaryAttackFromAir boolean
---@field DidInAirAltAlready boolean
---@field AltMontage UAnimMontage
local UCestus_WeaponScript_C = {}

function UCestus_WeaponScript_C:AltAttackPressed() end

function UCestus_WeaponScript_C:CancelAllAttacks() end

---@param EntryPoint int32
function UCestus_WeaponScript_C:ExecuteUbergraph_Cestus_WeaponScript(EntryPoint) end

function UCestus_WeaponScript_C:Landed() end

---@param NotifyName FName
function UCestus_WeaponScript_C:OnBlendOut_516D7FDC4AD24097EFD4618B7F4C7BE2(NotifyName) end

---@param NotifyName FName
function UCestus_WeaponScript_C:OnCompleted_516D7FDC4AD24097EFD4618B7F4C7BE2(NotifyName) end

---@param NotifyName FName
function UCestus_WeaponScript_C:OnInterrupted_516D7FDC4AD24097EFD4618B7F4C7BE2(NotifyName) end

---@param NotifyName FName
function UCestus_WeaponScript_C:OnNotifyBegin_516D7FDC4AD24097EFD4618B7F4C7BE2(NotifyName) end

---@param NotifyName FName
function UCestus_WeaponScript_C:OnNotifyEnd_516D7FDC4AD24097EFD4618B7F4C7BE2(NotifyName) end

function UCestus_WeaponScript_C:ReceiveBeginPlay() end
