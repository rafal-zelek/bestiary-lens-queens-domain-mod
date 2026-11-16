---@meta

---@class UMimic_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field CharacterRef AEnemyBase_C
---@field TrapIndex int32
local UMimic_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UMimic_AnimBP_C:AnimGraph(AnimGraph) end

function UMimic_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UMimic_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UMimic_AnimBP_C:ExecuteUbergraph_Mimic_AnimBP(EntryPoint) end
