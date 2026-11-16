---@meta

---@class UPlayer_MeleeShakeNotify_C : UAnimNotify
---@field CameraShake TSubclassOf<UCameraShakeBase>
---@field ['Force Feedback Effect'] UForceFeedbackEffect
local UPlayer_MeleeShakeNotify_C = {}

function UPlayer_MeleeShakeNotify_C:GetNotifyName() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UPlayer_MeleeShakeNotify_C:Received_Notify(MeshComp, Animation) end
