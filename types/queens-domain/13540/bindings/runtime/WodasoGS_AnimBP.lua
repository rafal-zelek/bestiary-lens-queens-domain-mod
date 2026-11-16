---@meta

---@class UWodasoGS_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field Rotation FRotator
---@field CurRotation float
local UWodasoGS_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UWodasoGS_AnimBP_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UWodasoGS_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UWodasoGS_AnimBP_C:ExecuteUbergraph_WodasoGS_AnimBP(EntryPoint) end
