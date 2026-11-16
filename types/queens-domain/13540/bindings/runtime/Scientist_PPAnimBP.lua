---@meta

---@class UScientist_PPAnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
local UScientist_PPAnimBP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UScientist_PPAnimBP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function UScientist_PPAnimBP_C:ExecuteUbergraph_Scientist_PPAnimBP(EntryPoint) end
