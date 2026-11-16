---@meta

---@class AJosamiKnight_Gun_Des_BP_C : AJosamiKnight_Gun_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AJosamiKnight_Gun_Des_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiKnight_Gun_Des_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AJosamiKnight_Gun_Des_BP_C:ExecuteUbergraph_JosamiKnight_Gun_Des_BP(EntryPoint) end

function AJosamiKnight_Gun_Des_BP_C:ReceiveBeginPlay() end
