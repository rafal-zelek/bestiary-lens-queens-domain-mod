---@meta

---@class UNecroZombie_Mesh_Skeleton_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field DIsableRootMotion boolean
local UNecroZombie_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UNecroZombie_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UNecroZombie_Mesh_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UNecroZombie_Mesh_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UNecroZombie_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_NecroZombie_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
