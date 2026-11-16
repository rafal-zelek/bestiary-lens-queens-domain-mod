---@meta

---@class UGolem_SoundNotify_C : UAnimNotify_PlaySound
---@field ['Sound Small'] USoundCue
---@field ['Sound Tree'] USoundBase
local UGolem_SoundNotify_C = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UGolem_SoundNotify_C:GetSound(MeshComp, Animation) end
