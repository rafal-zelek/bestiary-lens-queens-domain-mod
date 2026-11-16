---@meta

---@class ULargeRobot_PPABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_Root FAnimNode_Root
local ULargeRobot_PPABP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function ULargeRobot_PPABP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function ULargeRobot_PPABP_C:ExecuteUbergraph_LargeRobot_PPABP(EntryPoint) end
