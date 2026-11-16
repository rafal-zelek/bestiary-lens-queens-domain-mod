---@meta

---@class UDragonfly_AnimBlueprint_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_ApplyAdditive FAnimNode_ApplyAdditive
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field Tilt FRotator
---@field LocalVelocity FVector
local UDragonfly_AnimBlueprint_C = {}

---@param AnimGraph FPoseLink
function UDragonfly_AnimBlueprint_C:AnimGraph(AnimGraph) end

function UDragonfly_AnimBlueprint_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UDragonfly_AnimBlueprint_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UDragonfly_AnimBlueprint_C:ExecuteUbergraph_Dragonfly_AnimBlueprint(EntryPoint) end
