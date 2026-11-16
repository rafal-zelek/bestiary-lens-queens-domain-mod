---@meta

---@class ADes_JosamiKnight_DummyNPC_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DialogueEnded_0 FDes_JosamiKnight_DummyNPC_CDialogueEnded_0
---@field knight AActor
local ADes_JosamiKnight_DummyNPC_C = {}

function ADes_JosamiKnight_DummyNPC_C:DialogueEnded_0__DelegateSignature() end

function ADes_JosamiKnight_DummyNPC_C:EndDialogue() end

---@param EntryPoint int32
function ADes_JosamiKnight_DummyNPC_C:ExecuteUbergraph_Des_JosamiKnight_DummyNPC(EntryPoint) end

function ADes_JosamiKnight_DummyNPC_C:PickupCurrentReward() end

function ADes_JosamiKnight_DummyNPC_C:UpdatePlayerLookat() end
