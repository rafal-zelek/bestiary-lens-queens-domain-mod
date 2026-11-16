---@meta

---@class ASparklebugger_BP_C : ARattyBugger_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GlowSpriteComp UGlowSpriteComp_C
---@field FogLightComponent UFogLightComponent_C
---@field PointLight UPointLightComponent
---@field AOEHitbox USphereComponent
---@field SparkleBug_VFX UNiagaraComponent
local ASparklebugger_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASparklebugger_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ASparklebugger_BP_C:ExecuteUbergraph_Sparklebugger_BP(EntryPoint) end

function ASparklebugger_BP_C:ExplodeAttack() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ASparklebugger_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ASparklebugger_BP_C:OnBlendOut_0567AB8D4C4F389C17BAC4AC1A614DC7(NotifyName) end

---@param NotifyName FName
function ASparklebugger_BP_C:OnCompleted_0567AB8D4C4F389C17BAC4AC1A614DC7(NotifyName) end

---@param NotifyName FName
function ASparklebugger_BP_C:OnInterrupted_0567AB8D4C4F389C17BAC4AC1A614DC7(NotifyName) end

---@param NotifyName FName
function ASparklebugger_BP_C:OnNotifyBegin_0567AB8D4C4F389C17BAC4AC1A614DC7(NotifyName) end

---@param NotifyName FName
function ASparklebugger_BP_C:OnNotifyEnd_0567AB8D4C4F389C17BAC4AC1A614DC7(NotifyName) end
