---@meta

---@class UCrawler_Mesh_Skeleton_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field TrapIndex int32
---@field Moving boolean
---@field DIsableRootMotion boolean
---@field Falling boolean
---@field AimAngle float
---@field CharacterRef AEnemyBase_C
---@field ['Bestiary Instance'] boolean
local UCrawler_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UCrawler_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UCrawler_Mesh_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UCrawler_Mesh_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UCrawler_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_Crawler_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
