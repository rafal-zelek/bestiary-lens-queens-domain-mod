---@meta

---@class UChargeableMeleeNiagaraFX_C : UFS_AnimNotify_PlayNiagaraEffect
---@field ['Default Niagara System'] UNiagaraSystem
local UChargeableMeleeNiagaraFX_C = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UChargeableMeleeNiagaraFX_C:GetEffectOverride(MeshComp, Animation) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UChargeableMeleeNiagaraFX_C:Received_Notify(MeshComp, Animation) end
