---@meta

---@class UFishWife_TurnInAction_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Counts TArray<int32>
local UFishWife_TurnInAction_C = {}

function UFishWife_TurnInAction_C:DoneGiving() end

---@param EntryPoint int32
function UFishWife_TurnInAction_C:ExecuteUbergraph_FishWife_TurnInAction(EntryPoint) end

---@param Context AActor
function UFishWife_TurnInAction_C:RunActionWithinContext(Context) end

function UFishWife_TurnInAction_C:TurnInEggs() end
