---@meta

---@class UJigekiGMS_PPABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LookAt FAnimNode_LookAt
local UJigekiGMS_PPABP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UJigekiGMS_PPABP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function UJigekiGMS_PPABP_C:ExecuteUbergraph_JigekiGMS_PPABP(EntryPoint) end
