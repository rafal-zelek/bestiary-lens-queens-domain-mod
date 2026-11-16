---@meta

---@class UNecronomicon_PPAnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_ModifyCurve FAnimNode_ModifyCurve
---@field R_Cover_Rot FRotator
---@field L_Cover_Rot FRotator
---@field Closed float
local UNecronomicon_PPAnimBP_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UNecronomicon_PPAnimBP_C:AnimGraph(InPose, AnimGraph) end

---@param DeltaTimeX float
function UNecronomicon_PPAnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UNecronomicon_PPAnimBP_C:ExecuteUbergraph_Necronomicon_PPAnimBP(EntryPoint) end
