---@meta

---@class UDek_Egg_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field Open boolean
local UDek_Egg_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UDek_Egg_AnimBP_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UDek_Egg_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UDek_Egg_AnimBP_C:ExecuteUbergraph_Dek_Egg_AnimBP(EntryPoint) end
