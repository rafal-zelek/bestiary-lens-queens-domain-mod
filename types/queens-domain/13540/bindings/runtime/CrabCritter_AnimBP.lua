---@meta

---@class UCrabCritter_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field Threatened boolean
---@field Running boolean
---@field Dead boolean
---@field RandStart float
---@field RandSpeed float
local UCrabCritter_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UCrabCritter_AnimBP_C:AnimGraph(AnimGraph) end

function UCrabCritter_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UCrabCritter_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UCrabCritter_AnimBP_C:ExecuteUbergraph_CrabCritter_AnimBP(EntryPoint) end
