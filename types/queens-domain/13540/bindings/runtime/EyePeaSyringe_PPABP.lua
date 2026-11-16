---@meta

---@class UEyePeaSyringe_PPABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field InverseCharge float
local UEyePeaSyringe_PPABP_C = {}

---@param AnimGraph FPoseLink
function UEyePeaSyringe_PPABP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UEyePeaSyringe_PPABP_C:ExecuteUbergraph_EyePeaSyringe_PPABP(EntryPoint) end
