---@meta

---@class UB33Sword_SK_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
local UB33Sword_SK_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UB33Sword_SK_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UB33Sword_SK_AnimBP_C:ExecuteUbergraph_B33Sword_SK_AnimBP(EntryPoint) end
