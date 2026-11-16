---@meta

---@class UScientist_Ghost_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field ['Char Ref'] ANPC_Base_C
---@field ['Look Weight'] float
---@field ['Delta Time X'] float
---@field ['Look Pos'] FVector
---@field ['Idle Anim'] UAnimSequence
---@field ['Should Look At Player'] boolean
local UScientist_Ghost_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UScientist_Ghost_AnimBP_C:AnimGraph(AnimGraph) end

function UScientist_Ghost_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UScientist_Ghost_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UScientist_Ghost_AnimBP_C:ExecuteUbergraph_Scientist_Ghost_AnimBP(EntryPoint) end
