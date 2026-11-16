---@meta

---@class UChefCrow_Event_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_TwoWayBlend FAnimNode_TwoWayBlend
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field ['Char Ref'] AChefCrowEvent_NPC_C
---@field ['Delta Time X'] float
---@field ['Should Look At Player'] boolean
---@field ['Look Pos'] FVector
---@field ['Look Weight'] float
---@field FlightSpeed float
---@field openclaws float
---@field Active boolean
local UChefCrow_Event_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UChefCrow_Event_AnimBP_C:AnimGraph(AnimGraph) end

function UChefCrow_Event_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UChefCrow_Event_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UChefCrow_Event_AnimBP_C:ExecuteUbergraph_ChefCrow_Event_AnimBP(EntryPoint) end
