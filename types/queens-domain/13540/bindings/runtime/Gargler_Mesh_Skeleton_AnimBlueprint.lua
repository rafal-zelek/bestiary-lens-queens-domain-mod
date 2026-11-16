---@meta

---@class UGargler_Mesh_Skeleton_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_SequencePlayer_12 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_7 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_11 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_6 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_10 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_9 FAnimNode_SequencePlayer
---@field AnimGraphNode_RotationOffsetBlendSpace FAnimNode_RotationOffsetBlendSpace
---@field AnimGraphNode_SequencePlayer_8 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_7 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_6 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_5 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_4 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field TrapIndex int32
---@field AimAngle float
---@field Halberd boolean
---@field CharacterRef AEnemyBase_C
---@field ['Bestiary Instance'] boolean
---@field Crossbow boolean
---@field HoldIdle boolean
local UGargler_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UGargler_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UGargler_Mesh_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UGargler_Mesh_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UGargler_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_Gargler_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
