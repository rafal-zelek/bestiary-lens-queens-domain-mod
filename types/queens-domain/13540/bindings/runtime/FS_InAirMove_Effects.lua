---@meta

---@class UFS_InAirMove_Effects_C : UFS_AnimNotifyState_TimedNiagaraEffect
---@field BasicFX UNiagaraSystem
---@field EvolvedFX UNiagaraSystem
---@field SecretFX UNiagaraSystem
local UFS_InAirMove_Effects_C = {}

---@param MeshComp USkeletalMeshComponent
function UFS_InAirMove_Effects_C:GetTemplateOverride(MeshComp) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration float
function UFS_InAirMove_Effects_C:Received_NotifyBegin(MeshComp, Animation, TotalDuration) end
