---@meta

---@class UHempieSVT38_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_KawaiiPhysics_2 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field Empty boolean
local UHempieSVT38_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UHempieSVT38_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UHempieSVT38_AnimBP_C:ExecuteUbergraph_HempieSVT38_AnimBP(EntryPoint) end
