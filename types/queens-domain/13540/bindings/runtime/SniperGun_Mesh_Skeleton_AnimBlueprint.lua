---@meta

---@class USniperGun_Mesh_Skeleton_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
local USniperGun_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function USniperGun_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function USniperGun_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_SniperGun_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
