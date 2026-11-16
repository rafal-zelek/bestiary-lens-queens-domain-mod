---@meta

---@class UMechaKnight_Skeleton_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_4 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_SequencePlayer_9 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_8 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_7 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_6 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field TrapIndex int32
---@field CharacterRef AMechaKnight_Lance_Base_C
---@field Turning boolean
---@field LastRotation float
---@field Blocking boolean
---@field PlayerPos FVector
---@field BestiaryInstance boolean
local UMechaKnight_Skeleton_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UMechaKnight_Skeleton_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UMechaKnight_Skeleton_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UMechaKnight_Skeleton_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UMechaKnight_Skeleton_AnimBlueprint_C:ExecuteUbergraph_MechaKnight_Skeleton_AnimBlueprint(EntryPoint) end
