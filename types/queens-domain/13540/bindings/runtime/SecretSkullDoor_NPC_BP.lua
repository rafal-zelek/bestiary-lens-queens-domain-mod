---@meta

---@class ASecretSkullDoor_NPC_BP_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ASecretSkullDoor_NPC_BP_C = {}

---@param Dialogue FText
---@param ProcessedText FText
function ASecretSkullDoor_NPC_BP_C:ApplyFormatKeysToDialogue(Dialogue, ProcessedText) end

---@param EntryPoint int32
function ASecretSkullDoor_NPC_BP_C:ExecuteUbergraph_SecretSkullDoor_NPC_BP(EntryPoint) end

function ASecretSkullDoor_NPC_BP_C:ReceiveBeginPlay() end
