---@meta

---@class UBarnacle_Mesh_Skeleton_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_3 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Open boolean
---@field ['Delta Time X'] float
---@field CharacterRef ABarnacle_Base_BP_C
---@field ['Bestiary Instance'] boolean
---@field Aggrod boolean
---@field ActualLookAtLoc FVector
---@field TargetLookAtLoc FVector
---@field Aim float
local UBarnacle_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UBarnacle_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UBarnacle_Mesh_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UBarnacle_Mesh_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UBarnacle_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_Barnacle_Mesh_Skeleton_AnimBlueprint(EntryPoint) end
