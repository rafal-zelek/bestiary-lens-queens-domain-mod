---@meta

---@class UBirdFlail_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field HangDir FVector
---@field ChainEnd FRotator
---@field GravityAlpha float
---@field Charge float
local UBirdFlail_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UBirdFlail_AnimBP_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UBirdFlail_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UBirdFlail_AnimBP_C:ExecuteUbergraph_BirdFlail_AnimBP(EntryPoint) end
