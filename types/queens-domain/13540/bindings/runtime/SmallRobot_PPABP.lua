---@meta

---@class USmallRobot_PPABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_6 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_5 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_4 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_3 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field TireRotation FRotator
---@field CurrentTireRotation float
local USmallRobot_PPABP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function USmallRobot_PPABP_C:AnimGraph(InPose, AnimGraph) end

---@param DeltaTimeX float
function USmallRobot_PPABP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function USmallRobot_PPABP_C:ExecuteUbergraph_SmallRobot_PPABP(EntryPoint) end
