---@meta

---@class UDefault_Lizer_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_4 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Roided boolean
---@field CharacterRef AEnemyBase_C
---@field Sleeping boolean
local UDefault_Lizer_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UDefault_Lizer_AnimBP_C:AnimGraph(AnimGraph) end

function UDefault_Lizer_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UDefault_Lizer_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UDefault_Lizer_AnimBP_C:ExecuteUbergraph_Default_Lizer_AnimBP(EntryPoint) end
