---@meta

---@class UChef_Event_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_TwoWayBlend FAnimNode_TwoWayBlend
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field ['Delta Time X'] float
---@field ['Char Ref'] AChefCrowEvent_NPC_C
---@field ['Should Look At Player'] boolean
---@field ['Look Weight'] float
---@field ['Look Pos'] FVector
---@field Speed float
local UChef_Event_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UChef_Event_AnimBP_C:AnimGraph(AnimGraph) end

function UChef_Event_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UChef_Event_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UChef_Event_AnimBP_C:ExecuteUbergraph_Chef_Event_AnimBP(EntryPoint) end
