---@meta

---@class URat_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Spooked boolean
---@field Moving boolean
---@field RandomIdle boolean
---@field Threatened boolean
---@field RandSpeed float
---@field RandStart float
---@field NextIdle float
local URat_AnimBP_C = {}

---@param AnimGraph FPoseLink
function URat_AnimBP_C:AnimGraph(AnimGraph) end

function URat_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function URat_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function URat_AnimBP_C:ExecuteUbergraph_Rat_AnimBP(EntryPoint) end
