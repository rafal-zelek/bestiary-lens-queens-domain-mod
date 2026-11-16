---@meta

---@class UCrowprojectile_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Flapping boolean
---@field Flying boolean
---@field ['Char Ref'] ACrow_Bp_C
---@field animoffset float
---@field Spooking boolean
local UCrowprojectile_C = {}

---@param AnimGraph FPoseLink
function UCrowprojectile_C:AnimGraph(AnimGraph) end

function UCrowprojectile_C:BlueprintInitializeAnimation() end

---@param EntryPoint int32
function UCrowprojectile_C:ExecuteUbergraph_Crowprojectile(EntryPoint) end
