---@meta

---@class USipeha_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_TwoWayBlend FAnimNode_TwoWayBlend
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field Moving boolean
---@field MoveSpeed float
---@field CharRef ASipeha_BP_C
---@field LastYaw float
---@field LookAtPos FVector
---@field DraggedMovingVal float
local USipeha_AnimBP_C = {}

---@param AnimGraph FPoseLink
function USipeha_AnimBP_C:AnimGraph(AnimGraph) end

function USipeha_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function USipeha_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function USipeha_AnimBP_C:ExecuteUbergraph_Sipeha_AnimBP(EntryPoint) end

---@param DT float
function USipeha_AnimBP_C:UpdateMovingVal(DT) end
