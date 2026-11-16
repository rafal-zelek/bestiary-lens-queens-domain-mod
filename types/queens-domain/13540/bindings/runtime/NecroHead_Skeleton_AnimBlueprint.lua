---@meta

---@class UNecroHead_Skeleton_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_TwoWayBlend FAnimNode_TwoWayBlend
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field Dead boolean
---@field Activity float
local UNecroHead_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UNecroHead_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UNecroHead_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UNecroHead_Skeleton_AnimBlueprint_C:ExecuteUbergraph_NecroHead_Skeleton_AnimBlueprint(EntryPoint) end
