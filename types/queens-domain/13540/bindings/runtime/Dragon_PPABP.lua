---@meta

---@class UDragon_PPABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field Scale FVector
local UDragon_PPABP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UDragon_PPABP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function UDragon_PPABP_C:ExecuteUbergraph_Dragon_PPABP(EntryPoint) end
