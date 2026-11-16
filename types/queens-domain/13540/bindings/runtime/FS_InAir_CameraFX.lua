---@meta

---@class UFS_InAir_CameraFX_C : UFS_AnimNotify_PlayNiagaraEffect
---@field BasicFX UNiagaraSystem
---@field EvolvedFX UNiagaraSystem
---@field SecretFX UNiagaraSystem
local UFS_InAir_CameraFX_C = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UFS_InAir_CameraFX_C:GetTemplateOverride(MeshComp, Animation) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UFS_InAir_CameraFX_C:Received_Notify(MeshComp, Animation) end
