---@meta

---@class ALibrarian_NPC_BP_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RumorNamedSaveDatas TArray<FName>
local ALibrarian_NPC_BP_C = {}

---@param Dialogue FText
---@param ProcessedText FText
function ALibrarian_NPC_BP_C:ApplyFormatKeysToDialogue(Dialogue, ProcessedText) end

---@param EntryPoint int32
function ALibrarian_NPC_BP_C:ExecuteUbergraph_Librarian_NPC_BP(EntryPoint) end

function ALibrarian_NPC_BP_C:SubmitBestiaryResults() end
