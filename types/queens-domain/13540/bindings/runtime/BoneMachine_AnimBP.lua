---@meta

---@class UBoneMachine_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
local UBoneMachine_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UBoneMachine_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UBoneMachine_AnimBP_C:ExecuteUbergraph_BoneMachine_AnimBP(EntryPoint) end
