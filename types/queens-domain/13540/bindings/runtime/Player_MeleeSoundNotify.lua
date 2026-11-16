---@meta

---@class UPlayer_MeleeSoundNotify_C : UFS_AnimNotify_PlayMeleeSound
---@field DisableSoundFromWeapon boolean
---@field CameraShake TSubclassOf<UCameraShakeBase>
---@field ['Force Feedback Effect'] UForceFeedbackEffect
local UPlayer_MeleeSoundNotify_C = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UPlayer_MeleeSoundNotify_C:GetSound(MeshComp, Animation) end

---@param Volume float
---@param Pitch float
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UPlayer_MeleeSoundNotify_C:GetSoundConfiguration(Volume, Pitch, MeshComp, Animation) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UPlayer_MeleeSoundNotify_C:Received_Notify(MeshComp, Animation) end
