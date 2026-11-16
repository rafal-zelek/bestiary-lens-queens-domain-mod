---@meta

---@class URaider_TurnInNecklace_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AmtToConsume int32
local URaider_TurnInNecklace_C = {}

function URaider_TurnInNecklace_C:DoneGiving() end

---@param EntryPoint int32
function URaider_TurnInNecklace_C:ExecuteUbergraph_Raider_TurnInNecklace(EntryPoint) end

---@param Context AActor
function URaider_TurnInNecklace_C:RunActionWithinContext(Context) end
