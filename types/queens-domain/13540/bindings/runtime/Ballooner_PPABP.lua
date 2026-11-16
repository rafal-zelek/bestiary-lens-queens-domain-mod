---@meta

---@class UBallooner_PPABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_KawaiiPhysics_4 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
local UBallooner_PPABP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UBallooner_PPABP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function UBallooner_PPABP_C:ExecuteUbergraph_Ballooner_PPABP(EntryPoint) end
