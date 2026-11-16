---@meta

---@class UBookBug_BookBug_Low_Skeleton_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_6 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_2 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field TrapIndex int32
---@field Moving boolean
---@field Chasing boolean
---@field Falling boolean
---@field AimAngle float
---@field neckmod FRotator
---@field CharacterRef AEnemyBase_C
local UBookBug_BookBug_Low_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UBookBug_BookBug_Low_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UBookBug_BookBug_Low_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UBookBug_BookBug_Low_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UBookBug_BookBug_Low_Skeleton_AnimBlueprint_C:ExecuteUbergraph_BookBug_BookBug_Low_Skeleton_AnimBlueprint(EntryPoint) end

function UBookBug_BookBug_Low_Skeleton_AnimBlueprint_C:Update() end
