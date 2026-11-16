---@meta

---@class AKing_Fishman_BP_C : AFishManer_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AOEHitbox USphereComponent
---@field Hat UEnemyAttachmentMesh_C
local AKing_Fishman_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AKing_Fishman_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AKing_Fishman_BP_C:ExecuteUbergraph_King_Fishman_BP(EntryPoint) end

---@param NotifyName FName
function AKing_Fishman_BP_C:OnBlendOut_E823751F491A90E27E4E99AC337738B3(NotifyName) end

---@param NotifyName FName
function AKing_Fishman_BP_C:OnCompleted_E823751F491A90E27E4E99AC337738B3(NotifyName) end

---@param NotifyName FName
function AKing_Fishman_BP_C:OnInterrupted_E823751F491A90E27E4E99AC337738B3(NotifyName) end

---@param NotifyName FName
function AKing_Fishman_BP_C:OnNotifyBegin_E823751F491A90E27E4E99AC337738B3(NotifyName) end

---@param NotifyName FName
function AKing_Fishman_BP_C:OnNotifyEnd_E823751F491A90E27E4E99AC337738B3(NotifyName) end
