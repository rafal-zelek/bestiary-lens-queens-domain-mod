---@meta

---@class UFishWife_EggPlacementFadeAction_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Counts TArray<int32>
local UFishWife_EggPlacementFadeAction_C = {}

---@param EntryPoint int32
function UFishWife_EggPlacementFadeAction_C:ExecuteUbergraph_FishWife_EggPlacementFadeAction(EntryPoint) end

---@param Context AActor
function UFishWife_EggPlacementFadeAction_C:RunActionWithinContext(Context) end

function UFishWife_EggPlacementFadeAction_C:TurnInEggs() end
