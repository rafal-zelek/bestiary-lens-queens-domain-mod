---@meta

---@class UGhost_GiveItem_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local UGhost_GiveItem_C = {}

function UGhost_GiveItem_C:CustomEvent_0() end

---@param EntryPoint int32
function UGhost_GiveItem_C:ExecuteUbergraph_Ghost_GiveItem(EntryPoint) end

---@param Context AActor
function UGhost_GiveItem_C:RunActionWithinContext(Context) end
