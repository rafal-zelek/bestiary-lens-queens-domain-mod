---@meta

---@class UB0Blade_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
local UB0Blade_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UB0Blade_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UB0Blade_AnimBP_C:ExecuteUbergraph_B0Blade_AnimBP(EntryPoint) end
