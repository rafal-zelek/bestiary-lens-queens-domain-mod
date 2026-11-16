---@meta

---@class URaider_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field ['Char Ref'] ANPC_Base_C
---@field ['Idle Anim'] UAnimSequence
---@field ['Should Look At Player'] boolean
---@field ['Look Weight'] float
---@field ['Delta Time X'] float
---@field ['Look Pos'] FVector
local URaider_AnimBP_C = {}

---@param AnimGraph FPoseLink
function URaider_AnimBP_C:AnimGraph(AnimGraph) end

function URaider_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function URaider_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function URaider_AnimBP_C:ExecuteUbergraph_Raider_AnimBP(EntryPoint) end
