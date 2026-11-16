---@meta

---@class AQueen_HackNPC_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DialogueEnded_0 FQueen_HackNPC_CDialogueEnded_0
local AQueen_HackNPC_C = {}

function AQueen_HackNPC_C:DialogueEnded_0__DelegateSignature() end

function AQueen_HackNPC_C:EndDialogue() end

---@param EntryPoint int32
function AQueen_HackNPC_C:ExecuteUbergraph_Queen_HackNPC(EntryPoint) end
