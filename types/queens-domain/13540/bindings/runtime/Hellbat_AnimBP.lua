---@meta

---@class UHellbat_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace_1 FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace_1 FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field LocalVelocity FVector
---@field Tilt FRotator
---@field TrapIndex int32
---@field CharacterRef AEnemyBase_C
---@field LookTarget FVector
---@field ['Bestiary Instance'] boolean
---@field GroundMode boolean
local UHellbat_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UHellbat_AnimBP_C:AnimGraph(AnimGraph) end

function UHellbat_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UHellbat_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UHellbat_AnimBP_C:ExecuteUbergraph_Hellbat_AnimBP(EntryPoint) end
