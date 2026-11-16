---@meta

---@class AKnight_Ekonta_NPC_BP_C : AKnight_NPC_BP_Helmet_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Weapon_L UStaticMeshComponent
---@field RustedSword AItemPickup_Base_C
---@field Drop TSubclassOf<AItemPickup_Base_C>
local AKnight_Ekonta_NPC_BP_C = {}

---@param EntryPoint int32
function AKnight_Ekonta_NPC_BP_C:ExecuteUbergraph_Knight_Ekonta_NPC_BP(EntryPoint) end

function AKnight_Ekonta_NPC_BP_C:ReceiveBeginPlay() end

function AKnight_Ekonta_NPC_BP_C:ReceiveDestroyed() end

function AKnight_Ekonta_NPC_BP_C:SetQuestStateActive() end

function AKnight_Ekonta_NPC_BP_C:SetQuestStateInactive() end

function AKnight_Ekonta_NPC_BP_C:SwapTogaveSwordIdle() end
