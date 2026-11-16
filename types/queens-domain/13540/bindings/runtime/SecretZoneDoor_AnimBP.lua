---@meta

---@class USecretZoneDoor_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field Open boolean
---@field DoorRef ASecretZoneDoor_BP_C
local USecretZoneDoor_AnimBP_C = {}

---@param AnimGraph FPoseLink
function USecretZoneDoor_AnimBP_C:AnimGraph(AnimGraph) end

function USecretZoneDoor_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function USecretZoneDoor_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function USecretZoneDoor_AnimBP_C:ExecuteUbergraph_SecretZoneDoor_AnimBP(EntryPoint) end
