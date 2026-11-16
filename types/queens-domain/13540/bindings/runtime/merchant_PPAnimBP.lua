---@meta

---@class Umerchant_PPAnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
local Umerchant_PPAnimBP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function Umerchant_PPAnimBP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function Umerchant_PPAnimBP_C:ExecuteUbergraph_merchant_PPAnimBP(EntryPoint) end
