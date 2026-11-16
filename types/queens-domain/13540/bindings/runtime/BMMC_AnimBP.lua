---@meta

---@class UBMMC_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field ['Char Ref'] ANPC_Base_C
---@field ['Should Look At Player'] boolean
---@field ['Look Pos'] FVector
---@field ['Look Root'] FName
---@field ['Delta Time X'] float
---@field ['Look Weight'] float
local UBMMC_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UBMMC_AnimBP_C:AnimGraph(AnimGraph) end

function UBMMC_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UBMMC_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UBMMC_AnimBP_C:ExecuteUbergraph_BMMC_AnimBP(EntryPoint) end
