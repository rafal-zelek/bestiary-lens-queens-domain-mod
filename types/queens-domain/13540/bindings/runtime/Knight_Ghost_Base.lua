---@meta

---@class AKnight_Ghost_Base_C : ANPC_Ghost_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Helmet_0 UStaticMeshComponent
local AKnight_Ghost_Base_C = {}

---@param EntryPoint int32
function AKnight_Ghost_Base_C:ExecuteUbergraph_Knight_Ghost_Base(EntryPoint) end

---@param PlayerInteracting AActor
function AKnight_Ghost_Base_C:Interact(PlayerInteracting) end
