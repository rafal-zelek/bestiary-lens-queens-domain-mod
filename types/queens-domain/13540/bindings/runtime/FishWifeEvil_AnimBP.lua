---@meta

---@class UFishWifeEvil_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendSpacePlayer FAnimNode_BlendSpacePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field ['Look Weight'] float
---@field ['Char Ref'] AFishWifeEvil_BP_C
---@field ['Should Look At Player'] boolean
---@field ['Look Pos'] FVector
---@field ['Delta Time X'] float
---@field ChosenHeadSide boolean
---@field LastClampRotation float
---@field HeadSideOffsetAngle float
---@field XVel float
---@field YVel float
---@field ['Bestiary Instance'] boolean
local UFishWifeEvil_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UFishWifeEvil_AnimBP_C:AnimGraph(AnimGraph) end

function UFishWifeEvil_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UFishWifeEvil_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UFishWifeEvil_AnimBP_C:ExecuteUbergraph_FishWifeEvil_AnimBP(EntryPoint) end

---@param Pos FVector
---@param OutPos FVector
---@param Angle float
UFishWifeEvil_AnimBP_C['Clamp Look Pos'] = function(self, Pos, OutPos, Angle) end
