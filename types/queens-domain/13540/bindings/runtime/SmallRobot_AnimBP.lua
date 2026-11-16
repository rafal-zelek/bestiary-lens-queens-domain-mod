---@meta

---@class USmallRobot_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field TrapIndex int32
---@field CharacterRef AEnemyBase_C
local USmallRobot_AnimBP_C = {}

---@param AnimGraph FPoseLink
function USmallRobot_AnimBP_C:AnimGraph(AnimGraph) end

function USmallRobot_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function USmallRobot_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function USmallRobot_AnimBP_C:ExecuteUbergraph_SmallRobot_AnimBP(EntryPoint) end
