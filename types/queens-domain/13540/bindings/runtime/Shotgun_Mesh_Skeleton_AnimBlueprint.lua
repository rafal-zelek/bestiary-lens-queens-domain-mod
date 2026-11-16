---@meta

---@class UShotgun_Mesh_Skeleton_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
local UShotgun_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UShotgun_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UShotgun_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_Shotgun_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
