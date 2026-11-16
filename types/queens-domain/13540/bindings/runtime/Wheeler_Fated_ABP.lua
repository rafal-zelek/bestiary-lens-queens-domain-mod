---@meta

---@class UWheeler_Fated_ABP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequenceEvaluator FAnimNode_SequenceEvaluator
---@field TrapIndex int32
---@field BounceTime float
local UWheeler_Fated_ABP_C = {}

---@param AnimGraph FPoseLink
function UWheeler_Fated_ABP_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UWheeler_Fated_ABP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UWheeler_Fated_ABP_C:ExecuteUbergraph_Wheeler_Fated_ABP(EntryPoint) end
