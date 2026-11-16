---@meta

---@class UHarkLamp_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_NewTrack_0_C8FB0CFE4BA5C0333EB58AAF9593C522 float
---@field Timeline_0__Direction_C8FB0CFE4BA5C0333EB58AAF9593C522 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field SecondaryActive boolean
---@field AOEDamage FFB_DamageAttributeSet
local UHarkLamp_WeaponScript_C = {}

function UHarkLamp_WeaponScript_C:AltAttackPressed() end

function UHarkLamp_WeaponScript_C:EnteredHand() end

---@param EntryPoint int32
function UHarkLamp_WeaponScript_C:ExecuteUbergraph_HarkLamp_WeaponScript(EntryPoint) end

function UHarkLamp_WeaponScript_C:LeftHand() end

---@param NotifyName FName
function UHarkLamp_WeaponScript_C:OnBlendOut_6FC4A07544D08CD16D5EF29F061FBFFA(NotifyName) end

---@param NotifyName FName
function UHarkLamp_WeaponScript_C:OnCompleted_6FC4A07544D08CD16D5EF29F061FBFFA(NotifyName) end

---@param NotifyName FName
function UHarkLamp_WeaponScript_C:OnInterrupted_6FC4A07544D08CD16D5EF29F061FBFFA(NotifyName) end

---@param NotifyName FName
function UHarkLamp_WeaponScript_C:OnNotifyBegin_6FC4A07544D08CD16D5EF29F061FBFFA(NotifyName) end

---@param NotifyName FName
function UHarkLamp_WeaponScript_C:OnNotifyEnd_6FC4A07544D08CD16D5EF29F061FBFFA(NotifyName) end

function UHarkLamp_WeaponScript_C:Timeline_0__FinishedFunc() end

function UHarkLamp_WeaponScript_C:Timeline_0__UpdateFunc() end
