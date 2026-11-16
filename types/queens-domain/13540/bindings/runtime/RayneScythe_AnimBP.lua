---@meta

---@class URayneScythe_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
local URayneScythe_AnimBP_C = {}

---@param AnimGraph FPoseLink
function URayneScythe_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function URayneScythe_AnimBP_C:ExecuteUbergraph_RayneScythe_AnimBP(EntryPoint) end
