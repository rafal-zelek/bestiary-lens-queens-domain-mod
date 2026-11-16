---@meta

---@class AFishwife_Evil_DummyNPC_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DialogueEnded_0 FFishwife_Evil_DummyNPC_CDialogueEnded_0
local AFishwife_Evil_DummyNPC_C = {}

function AFishwife_Evil_DummyNPC_C:DialogueEnded_0__DelegateSignature() end

function AFishwife_Evil_DummyNPC_C:EndDialogue() end

---@param EntryPoint int32
function AFishwife_Evil_DummyNPC_C:ExecuteUbergraph_Fishwife_Evil_DummyNPC(EntryPoint) end

function AFishwife_Evil_DummyNPC_C:PickupCurrentReward() end

function AFishwife_Evil_DummyNPC_C:UpdatePlayerLookat() end
