---@meta

---@class UNPC_GiveNextReward_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ManualSetup boolean
---@field FoodMode boolean
local UNPC_GiveNextReward_C = {}

---@param EntryPoint int32
function UNPC_GiveNextReward_C:ExecuteUbergraph_NPC_GiveNextReward(EntryPoint) end

---@param Context AActor
function UNPC_GiveNextReward_C:RunActionWithinContext(Context) end

function UNPC_GiveNextReward_C:WaitForPickupThenComplete() end
