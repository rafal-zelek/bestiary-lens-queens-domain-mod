---@meta

---@class UWellcover_Breakable_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
local UWellcover_Breakable_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UWellcover_Breakable_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UWellcover_Breakable_AnimBP_C:ExecuteUbergraph_Wellcover_Breakable_AnimBP(EntryPoint) end
