---@meta

---@class ACocker_Sick_Bp_C : ACocker_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sick_Cocker_Flies UNiagaraComponent
local ACocker_Sick_Bp_C = {}

---@param EntryPoint int32
function ACocker_Sick_Bp_C:ExecuteUbergraph_Cocker_Sick_Bp(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ACocker_Sick_Bp_C:Kill(NoRewards, SupressDeathSound) end
