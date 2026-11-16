---@meta

---@class UCocker_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
local UCocker_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UCocker_AnimBlueprint_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UCocker_AnimBlueprint_C:ExecuteUbergraph_Cocker_AnimBlueprint(EntryPoint) end
