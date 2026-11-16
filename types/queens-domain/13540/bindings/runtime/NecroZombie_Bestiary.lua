---@meta

---@class UNecroZombie_Bestiary_C : UFS_EnemyAnimInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Root FAnimNode_Root
---@field DIsableRootMotion boolean
local UNecroZombie_Bestiary_C = {}

---@param AnimGraph FPoseLink
function UNecroZombie_Bestiary_C:AnimGraph(AnimGraph) end

function UNecroZombie_Bestiary_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UNecroZombie_Bestiary_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UNecroZombie_Bestiary_C:ExecuteUbergraph_NecroZombie_Bestiary(EntryPoint) end
