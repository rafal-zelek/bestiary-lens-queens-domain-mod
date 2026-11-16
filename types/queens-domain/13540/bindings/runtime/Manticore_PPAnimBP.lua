---@meta

---@class UManticore_PPAnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_KawaiiPhysics_19 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_KawaiiPhysics_18 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_17 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_16 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_15 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_14 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_13 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_12 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_11 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_10 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_9 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_8 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_7 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_6 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_KawaiiPhysics_5 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_4 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
local UManticore_PPAnimBP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UManticore_PPAnimBP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function UManticore_PPAnimBP_C:ExecuteUbergraph_Manticore_PPAnimBP(EntryPoint) end
