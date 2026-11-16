---@meta

---@class ULargeRobot_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Slot_4 FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool_6 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_10 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_5 FAnimNode_BlendListByBool
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_9 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_8 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_7 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_4 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_6 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_3 FAnimNode_Slot
---@field AnimGraphNode_ApplyAdditive_1 FAnimNode_ApplyAdditive
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_LookAt_6 FAnimNode_LookAt
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_LocalToComponentSpace_1 FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_5 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_4 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_3 FAnimNode_LookAt
---@field AnimGraphNode_ComponentToLocalSpace_1 FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_Slot_2 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_ApplyAdditive FAnimNode_ApplyAdditive
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field CharacterRef ALargeRobot_Base_BP_C
---@field TrapIndex int32
---@field Turning boolean
---@field LastRotation float
---@field LeftArmTarget FVector
---@field RightArmTarget FVector
---@field ShootMode boolean
---@field LeftArmTarget_Upper FVector
---@field RightArmTarget_Upper FVector
---@field UpperTargetOffset FVector
---@field HeadTarget FVector
---@field FiringJiggleStrength float
---@field BestiaryInstance boolean
---@field HeadLookStr float
---@field ArmLookStrength float
local ULargeRobot_AnimBP_C = {}

---@param AnimGraph FPoseLink
function ULargeRobot_AnimBP_C:AnimGraph(AnimGraph) end

function ULargeRobot_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function ULargeRobot_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function ULargeRobot_AnimBP_C:ExecuteUbergraph_LargeRobot_AnimBP(EntryPoint) end
