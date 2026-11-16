---@meta

---@class UBoner_ShrineBoss_PPABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_CopyPoseFromMesh FAnimNode_CopyPoseFromMesh
local UBoner_ShrineBoss_PPABP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UBoner_ShrineBoss_PPABP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function UBoner_ShrineBoss_PPABP_C:ExecuteUbergraph_Boner_ShrineBoss_PPABP(EntryPoint) end
