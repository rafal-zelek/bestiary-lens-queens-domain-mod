---@meta

---@class UGhostSpear_sk_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field AnimGraphNode_KawaiiPhysics_12 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_KawaiiPhysics_11 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_10 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_9 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_8 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_7 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_6 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_5 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_4 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
local UGhostSpear_sk_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UGhostSpear_sk_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UGhostSpear_sk_AnimBP_C:ExecuteUbergraph_GhostSpear_sk_AnimBP(EntryPoint) end
