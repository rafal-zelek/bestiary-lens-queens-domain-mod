---@meta

---@class ULordly_Spiker_ABP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_SequenceEvaluator FAnimNode_SequenceEvaluator
---@field CharacterRef AEnemyBase_C
---@field TrapIndex int32
---@field AnimSpeed float
---@field BounceTime float
local ULordly_Spiker_ABP_C = {}

---@param AnimGraph FPoseLink
function ULordly_Spiker_ABP_C:AnimGraph(AnimGraph) end

function ULordly_Spiker_ABP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function ULordly_Spiker_ABP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function ULordly_Spiker_ABP_C:ExecuteUbergraph_Lordly_Spiker_ABP(EntryPoint) end
