---@meta

---@class AKnight_Budaen_NPC_BP_C : AKnight_NPC_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Crest UStaticMeshComponent
---@field KeyItemPickup TSubclassOf<AItemPickup_Base_C>
---@field KeyPickup AItemPickup_Base_C
local AKnight_Budaen_NPC_BP_C = {}

---@param EntryPoint int32
function AKnight_Budaen_NPC_BP_C:ExecuteUbergraph_Knight_Budaen_NPC_BP(EntryPoint) end

function AKnight_Budaen_NPC_BP_C:ReceiveBeginPlay() end

function AKnight_Budaen_NPC_BP_C:ReceiveDestroyed() end

function AKnight_Budaen_NPC_BP_C:SetQuestStateActive() end

function AKnight_Budaen_NPC_BP_C:SetQuestStateInactive() end
