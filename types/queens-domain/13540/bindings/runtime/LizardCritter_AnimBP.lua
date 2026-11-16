---@meta

---@class ULizardCritter_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Spooked boolean
---@field RandStart float
---@field RandSpeed float
local ULizardCritter_AnimBP_C = {}

---@param AnimGraph FPoseLink
function ULizardCritter_AnimBP_C:AnimGraph(AnimGraph) end

function ULizardCritter_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function ULizardCritter_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function ULizardCritter_AnimBP_C:ExecuteUbergraph_LizardCritter_AnimBP(EntryPoint) end
