---@meta

---@class ARattyBugger_Gold_BP_C : ARattyBugger_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GoldBug_FX UNiagaraComponent
local ARattyBugger_Gold_BP_C = {}

---@param EntryPoint int32
function ARattyBugger_Gold_BP_C:ExecuteUbergraph_RattyBugger_Gold_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ARattyBugger_Gold_BP_C:Kill(NoRewards, SupressDeathSound) end
