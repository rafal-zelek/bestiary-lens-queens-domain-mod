---@meta

---@class UNecroEye_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_3 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field Character ANecronomicon_BP_C
---@field ['Eye Visible'] boolean
---@field LookTarget FVector
local UNecroEye_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UNecroEye_AnimBP_C:AnimGraph(AnimGraph) end

function UNecroEye_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UNecroEye_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UNecroEye_AnimBP_C:ExecuteUbergraph_NecroEye_AnimBP(EntryPoint) end
