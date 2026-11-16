---@meta

---@class ALargeRobot_Rusty_DummyNPC_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DialogueEnded_0 FLargeRobot_Rusty_DummyNPC_CDialogueEnded_0
local ALargeRobot_Rusty_DummyNPC_C = {}

function ALargeRobot_Rusty_DummyNPC_C:DialogueEnded_0__DelegateSignature() end

function ALargeRobot_Rusty_DummyNPC_C:EndDialogue() end

---@param EntryPoint int32
function ALargeRobot_Rusty_DummyNPC_C:ExecuteUbergraph_LargeRobot_Rusty_DummyNPC(EntryPoint) end

function ALargeRobot_Rusty_DummyNPC_C:PickupCurrentReward() end

function ALargeRobot_Rusty_DummyNPC_C:UpdatePlayerLookat() end
