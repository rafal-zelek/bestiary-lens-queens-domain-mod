---@meta

---@class UChickilus_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_BlendListByBool_5 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool_4 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_6 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_ModifyCurve FAnimNode_ModifyCurve
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Aggro boolean
---@field CharacterRef AChickilus_Base_BP_C
---@field Moving boolean
---@field Chasing boolean
---@field Falling boolean
---@field AddedShake float
---@field ['Bestiary Instance'] boolean
local UChickilus_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UChickilus_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UChickilus_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UChickilus_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UChickilus_AnimBlueprint_C:ExecuteUbergraph_Chickilus_AnimBlueprint(EntryPoint) end
