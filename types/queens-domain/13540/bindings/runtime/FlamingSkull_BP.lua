---@meta

---@class AFlamingSkull_BP_C : AFlyingEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Flames UNiagaraComponent
local AFlamingSkull_BP_C = {}

---@param EntryPoint int32
function AFlamingSkull_BP_C:ExecuteUbergraph_FlamingSkull_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AFlamingSkull_BP_C:Kill(NoRewards, SupressDeathSound) end

function AFlamingSkull_BP_C:ReceiveBeginPlay() end
