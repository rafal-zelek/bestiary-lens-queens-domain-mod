---@meta

---@class AJumpHelper_C : AFS_NavLinkProxy
---@field UberGraphFrame FPointerToUberGraphFrame
local AJumpHelper_C = {}

---@param EntryPoint int32
function AJumpHelper_C:ExecuteUbergraph_JumpHelper(EntryPoint) end

function AJumpHelper_C:RebuildNavNearby() end
