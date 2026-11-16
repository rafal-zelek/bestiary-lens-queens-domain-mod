---@meta

---@class UFisher_Mesh_Skeleton_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
local UFisher_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UFisher_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UFisher_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_Fisher_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
