---@meta

---@class UChef_TurnInAction_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Counts TArray<int32>
---@field AmtToConsume int32
local UChef_TurnInAction_C = {}

function UChef_TurnInAction_C:DoneGiving() end

---@param EntryPoint int32
function UChef_TurnInAction_C:ExecuteUbergraph_Chef_TurnInAction(EntryPoint) end

---@param Context AActor
function UChef_TurnInAction_C:RunActionWithinContext(Context) end

function UChef_TurnInAction_C:TurnInEggs() end
