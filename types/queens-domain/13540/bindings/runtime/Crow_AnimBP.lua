---@meta

---@class UCrow_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_ModifyBone_1 FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Flapping boolean
---@field Flying boolean
---@field ['Char Ref'] ACrow_Bp_C
---@field animoffset float
---@field Spooking boolean
---@field ['Idle Anim Index'] int32
local UCrow_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UCrow_AnimBP_C:AnimGraph(AnimGraph) end

function UCrow_AnimBP_C:BlueprintInitializeAnimation() end

---@param EntryPoint int32
function UCrow_AnimBP_C:ExecuteUbergraph_Crow_AnimBP(EntryPoint) end

---@param Flapping boolean
function UCrow_AnimBP_C:FlappingCHanged(Flapping) end

---@param Flying boolean
function UCrow_AnimBP_C:flyingchanged(Flying) end

---@param Spooking boolean
function UCrow_AnimBP_C:spookingchanged(Spooking) end
