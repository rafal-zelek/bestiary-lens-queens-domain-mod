---@meta

---@class UGolem_Mesh_Skeleton_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field CharacterRef AEnemyBase_C
---@field TrapIndex int32
---@field AnimScale float
local UGolem_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UGolem_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UGolem_Mesh_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UGolem_Mesh_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UGolem_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_Golem_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
