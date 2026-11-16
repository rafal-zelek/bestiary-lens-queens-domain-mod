---@meta

---@class AShrineboss-DummyNPC_BP_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DialogueEnded_0 FShrineboss-DummyNPC_BP_CDialogueEnded_0
local AShrineboss_DummyNPC_BP_C = {}

function AShrineboss_DummyNPC_BP_C:DialogueEnded_0__DelegateSignature() end

function AShrineboss_DummyNPC_BP_C:EndDialogue() end

function AShrineboss_DummyNPC_BP_C:PickupCurrentReward() end

function AShrineboss_DummyNPC_BP_C:UpdatePlayerLookat() end

---@param EntryPoint int32
AShrineboss_DummyNPC_BP_C['ExecuteUbergraph_Shrineboss-DummyNPC_BP'] = function(self, EntryPoint) end
