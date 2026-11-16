---@meta

---@class UWaspDeer_PPABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_KawaiiPhysics_6 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_KawaiiPhysics_5 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_4 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ApplyAdditive_1 FAnimNode_ApplyAdditive
---@field AnimGraphNode_ApplyAdditive FAnimNode_ApplyAdditive
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Root FAnimNode_Root
local UWaspDeer_PPABP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UWaspDeer_PPABP_C:AnimGraph(InPose, AnimGraph) end

---@param EntryPoint int32
function UWaspDeer_PPABP_C:ExecuteUbergraph_WaspDeer_PPABP(EntryPoint) end
