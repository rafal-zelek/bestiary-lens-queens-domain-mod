---@meta

---@class UTiniScythe_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field Hammer boolean
local UTiniScythe_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UTiniScythe_AnimBP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UTiniScythe_AnimBP_C:ExecuteUbergraph_TiniScythe_AnimBP(EntryPoint) end
