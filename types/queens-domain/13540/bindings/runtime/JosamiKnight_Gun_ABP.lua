---@meta

---@class UJosamiKnight_Gun_ABP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Slot_2 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LookAt_3 FAnimNode_LookAt
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_TwoBoneIK FAnimNode_TwoBoneIK
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Root FAnimNode_Root
---@field TrapIndex int32
---@field Falling boolean
---@field Moving boolean
---@field CharacterRef AEnemyBase_C
---@field AimAngle float
---@field Chasing boolean
---@field Target FVector
local UJosamiKnight_Gun_ABP_C = {}

---@param AnimGraph FPoseLink
function UJosamiKnight_Gun_ABP_C:AnimGraph(AnimGraph) end

function UJosamiKnight_Gun_ABP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UJosamiKnight_Gun_ABP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UJosamiKnight_Gun_ABP_C:ExecuteUbergraph_JosamiKnight_Gun_ABP(EntryPoint) end
