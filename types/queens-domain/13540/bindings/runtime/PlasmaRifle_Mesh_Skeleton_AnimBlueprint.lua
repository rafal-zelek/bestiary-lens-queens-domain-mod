---@meta

---@class UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
local UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param EntryPoint int32
function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:ExecuteUbergraph_PlasmaRifle_Mesh_Skeleton_AnimBlueprint(EntryPoint) end

---@param OutputPin UAnimMontage
function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:GetIdleAnimation(OutputPin) end

---@param NotifyName FName
function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:OnBlendOut_17F5179642EE549C53C5C5BC33E19DB4(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:OnCompleted_17F5179642EE549C53C5C5BC33E19DB4(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:OnInterrupted_17F5179642EE549C53C5C5BC33E19DB4(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:OnNotifyBegin_17F5179642EE549C53C5C5BC33E19DB4(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C:OnNotifyEnd_17F5179642EE549C53C5C5BC33E19DB4(NotifyName) end

UPlasmaRifle_Mesh_Skeleton_AnimBlueprint_C['Idle Loop'] = function(self) end
