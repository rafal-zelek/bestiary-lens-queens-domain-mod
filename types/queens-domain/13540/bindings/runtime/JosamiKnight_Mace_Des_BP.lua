---@meta

---@class AJosamiKnight_Mace_Des_BP_C : AJosamiKnight_Mace_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AJosamiKnight_Mace_Des_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiKnight_Mace_Des_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AJosamiKnight_Mace_Des_BP_C:ExecuteUbergraph_JosamiKnight_Mace_Des_BP(EntryPoint) end

function AJosamiKnight_Mace_Des_BP_C:SpinnyEnded() end

function AJosamiKnight_Mace_Des_BP_C:SpinnyStarted() end
