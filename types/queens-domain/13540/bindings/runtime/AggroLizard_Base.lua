---@meta

---@class AAggroLizard_Base_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PotionMesh UEnemyAttachmentMesh_C
---@field Timeline_2_0_NewTrack_0_21CE658E484138889DAFD58635E9DBB4 float
---@field Timeline_2_0__Direction_21CE658E484138889DAFD58635E9DBB4 ETimelineDirection::Type
---@field Timeline_2_0 UTimelineComponent
local AAggroLizard_Base_C = {}

function AAggroLizard_Base_C:Aggrod() end

function AAggroLizard_Base_C:CheckForStuckPath() end

function AAggroLizard_Base_C:DoPotionEffect() end

---@param EntryPoint int32
function AAggroLizard_Base_C:ExecuteUbergraph_AggroLizard_Base(EntryPoint) end

function AAggroLizard_Base_C:InitDeathFade() end

---@param NotifyName FName
function AAggroLizard_Base_C:OnBlendOut_8396E4A1469833F67B3C08A9A00B6121(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Base_C:OnCompleted_8396E4A1469833F67B3C08A9A00B6121(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Base_C:OnInterrupted_8396E4A1469833F67B3C08A9A00B6121(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Base_C:OnNotifyBegin_8396E4A1469833F67B3C08A9A00B6121(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Base_C:OnNotifyEnd_8396E4A1469833F67B3C08A9A00B6121(NotifyName) end

function AAggroLizard_Base_C:ReceiveBeginPlay() end

function AAggroLizard_Base_C:Timeline_2_0__FinishedFunc() end

function AAggroLizard_Base_C:Timeline_2_0__UpdateFunc() end
