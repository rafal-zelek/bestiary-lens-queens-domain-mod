---@meta

---@class UDemonSpider_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot_3 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot_2 FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_LegIK_7 FAnimNode_LegIK
---@field AnimGraphNode_LegIK_6 FAnimNode_LegIK
---@field AnimGraphNode_LegIK_5 FAnimNode_LegIK
---@field AnimGraphNode_LegIK_4 FAnimNode_LegIK
---@field AnimGraphNode_LegIK_3 FAnimNode_LegIK
---@field AnimGraphNode_LegIK_2 FAnimNode_LegIK
---@field AnimGraphNode_LegIK_1 FAnimNode_LegIK
---@field AnimGraphNode_LegIK FAnimNode_LegIK
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field CharacterRef ADemonSpider_BP_C
---@field TrapIndex int32
---@field Moving boolean
---@field Chasing boolean
---@field Falling boolean
---@field LookAtTarget FVector
---@field BodyPositionTweak FVector
---@field ['Delta Time X'] float
---@field LavaHeadTargetOffset FVector
---@field LavaHeadTargetOffsetDistance float
local UDemonSpider_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UDemonSpider_AnimBP_C:AnimGraph(AnimGraph) end

function UDemonSpider_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UDemonSpider_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UDemonSpider_AnimBP_C:ExecuteUbergraph_DemonSpider_AnimBP(EntryPoint) end

---@param Index int32
---@param Right boolean
function UDemonSpider_AnimBP_C:FootTouchedGround(Index, Right) end
