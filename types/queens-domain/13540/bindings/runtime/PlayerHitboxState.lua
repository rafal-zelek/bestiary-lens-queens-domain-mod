---@meta

---@class UPlayerHitboxState_C : UAnimNotify_PlayMontageNotifyWindow
---@field ['Wing Dash Hitbox'] boolean
local UPlayerHitboxState_C = {}

function UPlayerHitboxState_C:GetNotifyName() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration float
function UPlayerHitboxState_C:Received_NotifyBegin(MeshComp, Animation, TotalDuration) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UPlayerHitboxState_C:Received_NotifyEnd(MeshComp, Animation) end
