---@meta

---@class UChef_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field ['Delta Time X'] float
---@field ['Char Ref'] ANPC_Base_C
---@field ['Should Look At Player'] boolean
---@field ['Look Weight'] float
---@field ['Look Pos'] FVector
---@field Idle UAnimSequence
local UChef_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UChef_AnimBP_C:AnimGraph(AnimGraph) end

function UChef_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UChef_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UChef_AnimBP_C:ExecuteUbergraph_Chef_AnimBP(EntryPoint) end
