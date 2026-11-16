---@meta

---@class UDragon_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendSpacePlayer_1 FAnimNode_BlendSpacePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LegIK FAnimNode_LegIK
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_ModifyBone_1 FAnimNode_ModifyBone
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_BlendSpacePlayer FAnimNode_BlendSpacePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_LocalRefPose FAnimNode_RefPose
---@field Movement float
---@field DragonBP ADragon_Base_C
---@field LookAtTarget FVector
---@field LookAtStr float
---@field LocalDT float
---@field Grounded boolean
---@field LeftFootOffset FVector
---@field RightFootOffset FVector
---@field Turning float
---@field LastRotation float
---@field State int32
---@field Inactive boolean
local UDragon_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UDragon_AnimBP_C:AnimGraph(AnimGraph) end

function UDragon_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UDragon_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param InSocketName FName
---@param FootPoint FVector
function UDragon_AnimBP_C:DoFootTrace(InSocketName, FootPoint) end

---@param EntryPoint int32
function UDragon_AnimBP_C:ExecuteUbergraph_Dragon_AnimBP(EntryPoint) end

---@param Curve FName
---@param Bone FName
---@param Offset FVector
function UDragon_AnimBP_C:HandleFootHoming(Curve, Bone, Offset) end

function UDragon_AnimBP_C:UpdateTurningVal() end
