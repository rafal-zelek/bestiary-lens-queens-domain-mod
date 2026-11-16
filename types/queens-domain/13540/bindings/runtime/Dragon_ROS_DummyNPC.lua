---@meta

---@class ADragon_ROS_DummyNPC_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ADragon_ROS_DummyNPC_C = {}

function ADragon_ROS_DummyNPC_C:EndDialogue() end

---@param EntryPoint int32
function ADragon_ROS_DummyNPC_C:ExecuteUbergraph_Dragon_ROS_DummyNPC(EntryPoint) end

function ADragon_ROS_DummyNPC_C:PickupCurrentReward() end

function ADragon_ROS_DummyNPC_C:UpdatePlayerLookat() end
