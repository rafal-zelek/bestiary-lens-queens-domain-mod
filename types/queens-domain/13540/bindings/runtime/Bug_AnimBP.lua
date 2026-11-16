---@meta

---@class UBug_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_ApplyAdditive FAnimNode_ApplyAdditive
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field Flying float
local UBug_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UBug_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UBug_AnimBP_C:ExecuteUbergraph_Bug_AnimBP(EntryPoint) end
