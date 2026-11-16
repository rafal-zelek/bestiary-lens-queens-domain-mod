---@meta

---@class UBat_AnimBlueprint_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field LocalVelocity FVector
---@field Tilt FRotator
---@field TrapIndex int32
---@field CharacterRef AEnemyBase_C
---@field LookTarget FVector
---@field ['Bestiary Instance'] boolean
---@field HasTarget float
local UBat_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UBat_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UBat_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UBat_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UBat_AnimBlueprint_C:ExecuteUbergraph_Bat_AnimBlueprint(EntryPoint) end
