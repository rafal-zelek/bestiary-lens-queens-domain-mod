---@meta

---@class UBallooner_Skeleton_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_ModifyCurve FAnimNode_ModifyCurve
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field ['Glow Control'] float
---@field ['Bestiary Instance'] boolean
---@field Big boolean
---@field VerticalBobAmount float
local UBallooner_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UBallooner_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UBallooner_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UBallooner_Skeleton_AnimBlueprint_C:ExecuteUbergraph_Ballooner_Skeleton_AnimBlueprint(EntryPoint) end
