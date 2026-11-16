---@meta

---@class UQuickDash_SwordVisualsManager_C : UAnimNotify_PlayMontageNotifyWindow
local UQuickDash_SwordVisualsManager_C = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration float
function UQuickDash_SwordVisualsManager_C:Received_NotifyBegin(MeshComp, Animation, TotalDuration) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UQuickDash_SwordVisualsManager_C:Received_NotifyEnd(MeshComp, Animation) end
