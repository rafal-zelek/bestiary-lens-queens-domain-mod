---@meta

---@class ADustPufferBP_C : AWindReactorBP_C
---@field Color FLinearColor
local ADustPufferBP_C = {}

---@param Force FVector
---@param Countmult float
---@param PuffPFX UNiagaraComponent
function ADustPufferBP_C:ConfigurePuff(Force, Countmult, PuffPFX) end
