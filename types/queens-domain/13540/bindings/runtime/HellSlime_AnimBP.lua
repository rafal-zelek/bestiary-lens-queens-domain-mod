---@meta

---@class UHellSlime_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_ApplyAdditive FAnimNode_ApplyAdditive
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Moving boolean
---@field CharacterRef AEnemyBase_C
---@field Falling boolean
local UHellSlime_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UHellSlime_AnimBP_C:AnimGraph(AnimGraph) end

function UHellSlime_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UHellSlime_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UHellSlime_AnimBP_C:ExecuteUbergraph_HellSlime_AnimBP(EntryPoint) end
