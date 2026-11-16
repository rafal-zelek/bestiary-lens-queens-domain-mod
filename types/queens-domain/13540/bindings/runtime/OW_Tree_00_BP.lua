---@meta

---@class AOW_Tree_00_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LeafFallPos USceneComponent
---@field Branch_00_SM8 UStaticMeshComponent
---@field Branch_00_SM7 UStaticMeshComponent
---@field Branch_00_SM6 UStaticMeshComponent
---@field Branch_00_SM5 UStaticMeshComponent
---@field Branch_00_SM4 UStaticMeshComponent
---@field Branch_00_SM3 UStaticMeshComponent
---@field Branch_00_SM2 UStaticMeshComponent
---@field E UStaticMeshComponent
---@field Branch_00_SM1 UStaticMeshComponent
---@field Branch_00_SM UStaticMeshComponent
---@field LeafFallActor AFallingLeaves_BP_C
local AOW_Tree_00_BP_C = {}

function AOW_Tree_00_BP_C:CreateLeafFall() end

---@param EntryPoint int32
function AOW_Tree_00_BP_C:ExecuteUbergraph_OW_Tree_00_BP(EntryPoint) end
