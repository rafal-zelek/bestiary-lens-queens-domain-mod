---@meta

---@class UMechaKnight_DualAxe_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_SequencePlayer_6 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field TrapIndex int32
---@field CharacterRef AMechaKnight_DualAxe_Base_C
---@field Turning boolean
---@field LastRotation float
---@field PlayerPos FVector
---@field BestiaryInstance boolean
local UMechaKnight_DualAxe_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UMechaKnight_DualAxe_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UMechaKnight_DualAxe_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UMechaKnight_DualAxe_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UMechaKnight_DualAxe_AnimBlueprint_C:ExecuteUbergraph_MechaKnight_DualAxe_AnimBlueprint(EntryPoint) end
