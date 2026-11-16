---@meta

---@class UMonocle_Gargler_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_6 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_RotationOffsetBlendSpace FAnimNode_RotationOffsetBlendSpace
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field TrapIndex int32
---@field Moving boolean
---@field Chasing boolean
---@field Falling boolean
---@field AimAngle float
---@field Halberd boolean
---@field CharacterRef AEnemyBase_C
---@field ['Bestiary Instance'] boolean
---@field Fleeing boolean
local UMonocle_Gargler_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UMonocle_Gargler_AnimBP_C:AnimGraph(AnimGraph) end

function UMonocle_Gargler_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UMonocle_Gargler_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UMonocle_Gargler_AnimBP_C:ExecuteUbergraph_Monocle_Gargler_AnimBP(EntryPoint) end
