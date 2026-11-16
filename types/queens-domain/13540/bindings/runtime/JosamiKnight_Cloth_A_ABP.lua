---@meta

---@class UJosamiKnight_Cloth_A_ABP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_KawaiiPhysics_1 FAnimNode_KawaiiPhysics
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_KawaiiPhysics FAnimNode_KawaiiPhysics
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_CopyPoseFromMesh FAnimNode_CopyPoseFromMesh
local UJosamiKnight_Cloth_A_ABP_C = {}

---@param AnimGraph FPoseLink
function UJosamiKnight_Cloth_A_ABP_C:AnimGraph(AnimGraph) end

---@param EntryPoint int32
function UJosamiKnight_Cloth_A_ABP_C:ExecuteUbergraph_JosamiKnight_Cloth_A_ABP(EntryPoint) end
