---@meta

---@class UQueen_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByInt_1 FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field State int32
---@field TrapIndex int32
local UQueen_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UQueen_AnimBP_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UQueen_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UQueen_AnimBP_C:ExecuteUbergraph_Queen_AnimBP(EntryPoint) end
