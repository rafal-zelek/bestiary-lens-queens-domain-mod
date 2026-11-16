---@meta

---@class UBoner_executioner_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_2 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_RotationOffsetBlendSpace FAnimNode_RotationOffsetBlendSpace
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_LayeredBoneBlend_1 FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field TrapIndex int32
---@field AimAngle float
---@field CharacterRef ABoner_Base_BP_C
---@field ['Base Pose'] UAnimSequence
---@field Heavy boolean
---@field WalkingSpeed float
local UBoner_executioner_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UBoner_executioner_AnimBP_C:AnimGraph(AnimGraph) end

function UBoner_executioner_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UBoner_executioner_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UBoner_executioner_AnimBP_C:ExecuteUbergraph_Boner_executioner_AnimBP(EntryPoint) end
