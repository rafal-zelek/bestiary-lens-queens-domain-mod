---@meta

---@class AWhaleKing_SG_DummyNPC_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DialogueEnded_0 FWhaleKing_SG_DummyNPC_CDialogueEnded_0
local AWhaleKing_SG_DummyNPC_C = {}

function AWhaleKing_SG_DummyNPC_C:DialogueEnded_0__DelegateSignature() end

function AWhaleKing_SG_DummyNPC_C:EndDialogue() end

---@param EntryPoint int32
function AWhaleKing_SG_DummyNPC_C:ExecuteUbergraph_WhaleKing_SG_DummyNPC(EntryPoint) end

function AWhaleKing_SG_DummyNPC_C:PickupCurrentReward() end

function AWhaleKing_SG_DummyNPC_C:UpdatePlayerLookat() end
