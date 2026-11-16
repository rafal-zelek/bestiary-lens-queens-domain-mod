---@meta

---@class ULuudeCrossbow_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
local ULuudeCrossbow_AnimBP_C = {}

---@param AnimGraph FPoseLink
function ULuudeCrossbow_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function ULuudeCrossbow_AnimBP_C:ExecuteUbergraph_LuudeCrossbow_AnimBP(EntryPoint) end
