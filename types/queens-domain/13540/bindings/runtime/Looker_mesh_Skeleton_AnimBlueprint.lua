---@meta

---@class ULooker_mesh_Skeleton_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Falling boolean
---@field Aggrod boolean
---@field TargetLookAtLoc FVector
---@field ['Delta Time X'] float
---@field CharacterRef ALooker_Base_BP_C
---@field ActualLookAtLoc FVector
---@field ['Bestiary Instance'] boolean
local ULooker_mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function ULooker_mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function ULooker_mesh_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function ULooker_mesh_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function ULooker_mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_Looker_mesh_Skeleton_AnimBlueprint(EntryPoint) end
