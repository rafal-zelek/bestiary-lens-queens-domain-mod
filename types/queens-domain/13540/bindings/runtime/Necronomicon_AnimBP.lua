---@meta

---@class UNecronomicon_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_ModifyBone_1 FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace_1 FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace_1 FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_Slot_4 FAnimNode_Slot
---@field AnimGraphNode_ModifyCurve FAnimNode_ModifyCurve
---@field AnimGraphNode_Slot_3 FAnimNode_Slot
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_2 FAnimNode_Slot
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field DemonMode boolean
---@field Moving boolean
---@field CharacterRef ANecronomicon_BP_C
---@field Chasing boolean
---@field Falling boolean
---@field AimAngle float
---@field LocalDeltaTime float
---@field Tilt FRotator
---@field VertOffset FVector
---@field DemonModebLEND float
---@field Dead boolean
---@field State int32
---@field Spinning float
local UNecronomicon_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UNecronomicon_AnimBP_C:AnimGraph(AnimGraph) end

function UNecronomicon_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UNecronomicon_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UNecronomicon_AnimBP_C:ExecuteUbergraph_Necronomicon_AnimBP(EntryPoint) end

function UNecronomicon_AnimBP_C:UpdateAim() end

function UNecronomicon_AnimBP_C:UpdateTilt() end
