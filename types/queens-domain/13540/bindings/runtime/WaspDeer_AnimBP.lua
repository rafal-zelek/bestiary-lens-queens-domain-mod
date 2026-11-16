---@meta

---@class UWaspDeer_AnimBP_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_Inertialization FAnimNode_Inertialization
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field Moving boolean
---@field Falling boolean
---@field CharacterRef AEnemyBase_C
---@field LastClampRotation float
---@field HeadSideOffsetAngle float
---@field ChosenHeadSide boolean
---@field ['Should Look At Player'] boolean
---@field ['Look Pos'] FVector
---@field ['Look Weight'] float
---@field ['Delta Time X'] float
---@field ['Is Aggrod'] boolean
local UWaspDeer_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UWaspDeer_AnimBP_C:AnimGraph(AnimGraph) end

function UWaspDeer_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UWaspDeer_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UWaspDeer_AnimBP_C:ExecuteUbergraph_WaspDeer_AnimBP(EntryPoint) end

---@param CurrentLook FVector
---@param DeltaTime float
---@param CurrentLookWeight float
---@param InSocketName FName
---@param Should_Look boolean
---@param NewLookWeight float
---@param NewLookPos FVector
---@param LookTarget FVector
function UWaspDeer_AnimBP_C:HandleLookAt(CurrentLook, DeltaTime, CurrentLookWeight, InSocketName, Should_Look, NewLookWeight, NewLookPos, LookTarget) end

---@param Pos FVector
---@param OutPos FVector
---@param Angle float
UWaspDeer_AnimBP_C['Clamp Look Pos'] = function(self, Pos, OutPos, Angle) end
