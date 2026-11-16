---@meta

---@class UManticore_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_CCDIK FAnimNode_CCDIK
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_TwoWayBlend_1 FAnimNode_TwoWayBlend
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_TwoWayBlend FAnimNode_TwoWayBlend
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field TailTarget_LocalSpace FVector
---@field TrackingSpeed float
---@field MoveAmt float
---@field ['Delta Time X'] float
---@field Move boolean
---@field Speed float
---@field SlowMoveAnim boolean
---@field AlwaysWalk boolean
---@field Albino boolean
---@field CharBP AManticore_BP_C
---@field MoveSpeed float
---@field LastYaw float
---@field DraggedMovingVal float
---@field Moving boolean
local UManticore_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UManticore_AnimBP_C:AnimGraph(AnimGraph) end

function UManticore_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UManticore_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

function UManticore_AnimBP_C:CalculateTailTarget() end

---@param EntryPoint int32
function UManticore_AnimBP_C:ExecuteUbergraph_Manticore_AnimBP(EntryPoint) end

function UManticore_AnimBP_C:UpdateMoving() end

---@param DT float
function UManticore_AnimBP_C:UpdateMovingVal(DT) end
