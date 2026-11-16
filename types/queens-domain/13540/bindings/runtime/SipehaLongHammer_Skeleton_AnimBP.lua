---@meta

---@class USipehaLongHammer_Skeleton_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace_1 FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LocalToComponentSpace_1 FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field GravPos FVector
local USipehaLongHammer_Skeleton_AnimBP_C = {}

---@param AnimGraph FPoseLink
function USipehaLongHammer_Skeleton_AnimBP_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function USipehaLongHammer_Skeleton_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function USipehaLongHammer_Skeleton_AnimBP_C:ExecuteUbergraph_SipehaLongHammer_Skeleton_AnimBP(EntryPoint) end
