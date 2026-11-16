---@meta

---@class UUndeadKnight_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
local UUndeadKnight_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UUndeadKnight_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UUndeadKnight_AnimBP_C:ExecuteUbergraph_UndeadKnight_AnimBP(EntryPoint) end
