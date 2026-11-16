---@meta

---@class UGhost_MoveOn_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local UGhost_MoveOn_C = {}

---@param EntryPoint int32
function UGhost_MoveOn_C:ExecuteUbergraph_Ghost_MoveOn(EntryPoint) end

---@param Context AActor
function UGhost_MoveOn_C:RunActionWithinContext(Context) end
