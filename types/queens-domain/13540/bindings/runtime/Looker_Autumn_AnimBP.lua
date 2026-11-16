---@meta

---@class ULooker_Autumn_AnimBP_C : UAnimInstance
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
---@field ['Bestiary Instance'] boolean
---@field Aggrod boolean
---@field CharacterRef ALooker_Autumn_Base_BP_C
---@field ['Delta Time X'] float
---@field ActualLookAtLoc FVector
---@field TargetLookAtLoc FVector
local ULooker_Autumn_AnimBP_C = {}

---@param AnimGraph FPoseLink
function ULooker_Autumn_AnimBP_C:AnimGraph(AnimGraph) end

function ULooker_Autumn_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function ULooker_Autumn_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function ULooker_Autumn_AnimBP_C:ExecuteUbergraph_Looker_Autumn_AnimBP(EntryPoint) end
