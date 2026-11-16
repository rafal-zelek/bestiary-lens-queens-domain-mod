---@meta

---@class UFlamingSKull_ABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field LocalVelocity FVector
---@field Tilt FRotator
local UFlamingSKull_ABP_C = {}

---@param AnimGraph FPoseLink
function UFlamingSKull_ABP_C:AnimGraph(AnimGraph) end

---@param DeltaTimeX float
function UFlamingSKull_ABP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UFlamingSKull_ABP_C:ExecuteUbergraph_FlamingSKull_ABP(EntryPoint) end
