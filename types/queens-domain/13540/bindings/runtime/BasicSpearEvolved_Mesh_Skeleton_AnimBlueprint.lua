---@meta

---@class UBasicSpearEvolved_Mesh_Skeleton_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field Charged boolean
---@field Owner ABasicSpearEvolved_WeaponVisuals_C
---@field Script UBasicSpearEvolved_WeaponScript_C
local UBasicSpearEvolved_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UBasicSpearEvolved_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UBasicSpearEvolved_Mesh_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UBasicSpearEvolved_Mesh_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UBasicSpearEvolved_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_BasicSpearEvolved_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
