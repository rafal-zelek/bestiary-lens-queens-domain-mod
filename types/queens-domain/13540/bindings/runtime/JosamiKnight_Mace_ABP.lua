---@meta

---@class UJosamiKnight_Mace_ABP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field TrapIndex int32
---@field Falling boolean
---@field Moving boolean
---@field CharacterRef AEnemyBase_C
---@field AimAngle float
---@field Chasing boolean
local UJosamiKnight_Mace_ABP_C = {}

---@param AnimGraph FPoseLink
function UJosamiKnight_Mace_ABP_C:AnimGraph(AnimGraph) end

function UJosamiKnight_Mace_ABP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UJosamiKnight_Mace_ABP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UJosamiKnight_Mace_ABP_C:ExecuteUbergraph_JosamiKnight_Mace_ABP(EntryPoint) end
