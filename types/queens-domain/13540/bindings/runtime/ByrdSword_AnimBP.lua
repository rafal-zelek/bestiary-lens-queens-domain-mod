---@meta

---@class UByrdSword_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_7 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_6 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_5 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_4 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
local UByrdSword_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UByrdSword_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UByrdSword_AnimBP_C:ExecuteUbergraph_ByrdSword_AnimBP(EntryPoint) end
