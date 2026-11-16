---@meta

---@class UHeartBed_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequenceEvaluator FAnimNode_SequenceEvaluator
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_ApplyMeshSpaceAdditive FAnimNode_ApplyMeshSpaceAdditive
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Bouncin boolean
---@field BounceTime float
---@field openstate boolean
local UHeartBed_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UHeartBed_AnimBP_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UHeartBed_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UHeartBed_AnimBP_C:ExecuteUbergraph_HeartBed_AnimBP(EntryPoint) end
