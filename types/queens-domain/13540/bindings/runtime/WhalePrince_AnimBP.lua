---@meta

---@class UWhalePrince_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot_3 FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_2 FAnimNode_Slot
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_LookAt_5 FAnimNode_LookAt
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_LookAt_4 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_3 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field TrapIndex int32
---@field Moving boolean
---@field Chasing boolean
---@field Falling boolean
---@field AimAngle float
---@field LookAngle float
---@field WalkAnimSpeed float
---@field HeadFacingTargetInterp FVector
---@field EyeFacingTarget FVector
---@field CharacterRef AWhalePrince_BP_C
---@field Ready boolean
---@field ['Delta Time X'] float
---@field ['Spring State'] FVectorSpringState
---@field HeadFacingTarget FVector
---@field HeadLookStr float
---@field HeadSideOffsetAngle float
---@field LastClampRotation float
---@field ChosenHeadSide boolean
---@field WalkCycleStart float
local UWhalePrince_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UWhalePrince_AnimBP_C:AnimGraph(AnimGraph) end

function UWhalePrince_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UWhalePrince_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

function UWhalePrince_AnimBP_C:ClampRotation() end

---@param EntryPoint int32
function UWhalePrince_AnimBP_C:ExecuteUbergraph_WhalePrince_AnimBP(EntryPoint) end

function UWhalePrince_AnimBP_C:UpdateEyeTracking() end

function UWhalePrince_AnimBP_C:UpdateHeadTracking() end

---@param InputPin FVector
---@param Calc_d_Angle float
UWhalePrince_AnimBP_C['Clamp Head Target'] = function(self, InputPin, Calc_d_Angle) end
