---@meta

---@class UDesJosamiGiveKey_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local UDesJosamiGiveKey_C = {}

---@param EntryPoint int32
function UDesJosamiGiveKey_C:ExecuteUbergraph_DesJosamiGiveKey(EntryPoint) end

function UDesJosamiGiveKey_C:PickedUp() end

---@param Context AActor
function UDesJosamiGiveKey_C:RunActionWithinContext(Context) end
