---@meta

---@class UJosamiLord_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_15 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_8 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_7 FAnimNode_BlendListByBool
---@field AnimGraphNode_LocalToComponentSpace_2 FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_6 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_5 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_4 FAnimNode_LookAt
---@field AnimGraphNode_ComponentToLocalSpace_2 FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_BlendListByBool_6 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_5 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_14 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_13 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_12 FAnimNode_SequencePlayer
---@field AnimGraphNode_TransitionResult_3 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_2 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_1 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult FAnimNode_TransitionResult
---@field AnimGraphNode_SequencePlayer_11 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_3 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer_10 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_2 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer_9 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_1 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer_8 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult FAnimNode_StateResult
---@field AnimGraphNode_StateMachine FAnimNode_StateMachine
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_BlendListByBool_4 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_7 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_6 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_RotationOffsetBlendSpace FAnimNode_RotationOffsetBlendSpace
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_LocalToComponentSpace_1 FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_3 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_ComponentToLocalSpace_1 FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field CharBP AJosamiLord_BP_C
---@field Running boolean
---@field LookAtStr float
---@field LookAtTarget FVector
---@field LocalDT float
---@field CloseWalk boolean
---@field RunningAttackSideIsRight boolean
---@field GunState boolean
---@field GunAimPoint FVector
---@field GunAimAngleX float
---@field GunAimAngleY float
---@field RidingDragon boolean
---@field UprightRot FRotator
---@field Gunner boolean
---@field TrapIndex int32
local UJosamiLord_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UJosamiLord_AnimBP_C:AnimGraph(AnimGraph) end

function UJosamiLord_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UJosamiLord_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UJosamiLord_AnimBP_C:ExecuteUbergraph_JosamiLord_AnimBP(EntryPoint) end
