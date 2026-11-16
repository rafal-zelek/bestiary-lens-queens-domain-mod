---@meta

---@class ASipeha_NPC_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SipehaCharacter ASipeha_BP_C
local ASipeha_NPC_C = {}

function ASipeha_NPC_C:Banish() end

function ASipeha_NPC_C:CustomEvent() end

function ASipeha_NPC_C:CustomEvent_0() end

function ASipeha_NPC_C:Eat() end

---@param EntryPoint int32
function ASipeha_NPC_C:ExecuteUbergraph_Sipeha_NPC(EntryPoint) end

---@param PlayerInteracting AActor
function ASipeha_NPC_C:Interact(PlayerInteracting) end
