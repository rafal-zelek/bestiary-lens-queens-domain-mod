---@meta

---@class UFishWife_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field ['Char Ref'] ANPC_Base_C
---@field ['Delta Time X'] float
---@field ['Look Weight'] float
---@field ['Look Pos'] FVector
---@field ['Idle Anim'] UAnimSequence
---@field ['Should Look At Player'] boolean
---@field ChosenHeadSide boolean
---@field HeadSideOffsetAngle float
---@field LastClampRotation float
local UFishWife_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UFishWife_AnimBP_C:AnimGraph(AnimGraph) end

function UFishWife_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UFishWife_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UFishWife_AnimBP_C:ExecuteUbergraph_FishWife_AnimBP(EntryPoint) end

---@param Pos FVector
---@param OutPos FVector
---@param Angle float
UFishWife_AnimBP_C['Clamp Look Pos'] = function(self, Pos, OutPos, Angle) end
