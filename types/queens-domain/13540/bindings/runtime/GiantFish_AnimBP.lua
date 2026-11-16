---@meta

---@class UGiantFish_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Slot FAnimNode_Slot
local UGiantFish_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UGiantFish_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UGiantFish_AnimBP_C:ExecuteUbergraph_GiantFish_AnimBP(EntryPoint) end
