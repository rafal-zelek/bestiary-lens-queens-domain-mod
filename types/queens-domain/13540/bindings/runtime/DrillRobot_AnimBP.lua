---@meta

---@class UDrillRobot_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field CharacterRef AEnemyBase_C
---@field TrapIndex int32
---@field DrillRotation FRotator
---@field DrillCumulativeRotation float
local UDrillRobot_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UDrillRobot_AnimBP_C:AnimGraph(AnimGraph) end

function UDrillRobot_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UDrillRobot_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UDrillRobot_AnimBP_C:ExecuteUbergraph_DrillRobot_AnimBP(EntryPoint) end
