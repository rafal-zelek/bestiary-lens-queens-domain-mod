---@meta

---@class AKnight_Ekonta_NPC_Ghost_BP_C : AKnight_Ghost_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OtherKnightGhosts TArray<ANPC_Ghost_Base_C>
local AKnight_Ekonta_NPC_Ghost_BP_C = {}

function AKnight_Ekonta_NPC_Ghost_BP_C:CountPresentKnightGhosts() end

---@param EntryPoint int32
function AKnight_Ekonta_NPC_Ghost_BP_C:ExecuteUbergraph_Knight_Ekonta_NPC_Ghost_BP(EntryPoint) end

---@param PlayerInteracting AActor
function AKnight_Ekonta_NPC_Ghost_BP_C:Interact(PlayerInteracting) end

function AKnight_Ekonta_NPC_Ghost_BP_C:MoveOn() end
