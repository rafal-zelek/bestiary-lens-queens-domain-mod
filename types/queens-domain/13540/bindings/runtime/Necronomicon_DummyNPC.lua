---@meta

---@class ANecronomicon_DummyNPC_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DialogueEnded_0 FNecronomicon_DummyNPC_CDialogueEnded_0
local ANecronomicon_DummyNPC_C = {}

function ANecronomicon_DummyNPC_C:DialogueEnded_0__DelegateSignature() end

function ANecronomicon_DummyNPC_C:EndDialogue() end

---@param EntryPoint int32
function ANecronomicon_DummyNPC_C:ExecuteUbergraph_Necronomicon_DummyNPC(EntryPoint) end

function ANecronomicon_DummyNPC_C:PickupCurrentReward() end

function ANecronomicon_DummyNPC_C:UpdatePlayerLookat() end
