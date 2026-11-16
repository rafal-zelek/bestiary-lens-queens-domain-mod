---@meta

---@class UMerchant_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field ['Delta Time X'] float
---@field ['Char Ref'] ANPC_Base_C
---@field ['Should Look At Player'] boolean
---@field ['Look Weight'] float
---@field ['Look Pos'] FVector
---@field ['Idle Anim'] UAnimSequence
local UMerchant_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UMerchant_AnimBP_C:AnimGraph(AnimGraph) end

function UMerchant_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UMerchant_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UMerchant_AnimBP_C:ExecuteUbergraph_Merchant_AnimBP(EntryPoint) end
