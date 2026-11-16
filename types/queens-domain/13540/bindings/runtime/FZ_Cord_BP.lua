---@meta

---@class AFZ_Cord_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FZ_Cord_Top_SM UStaticMeshComponent
---@field FZ_Cord_Bottom_SM UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Break float
local AFZ_Cord_BP_C = {}

---@param EntryPoint int32
function AFZ_Cord_BP_C:ExecuteUbergraph_FZ_Cord_BP(EntryPoint) end

---@param Break float
function AFZ_Cord_BP_C:UpdateCordBreak(Break) end

function AFZ_Cord_BP_C:UserConstructionScript() end
