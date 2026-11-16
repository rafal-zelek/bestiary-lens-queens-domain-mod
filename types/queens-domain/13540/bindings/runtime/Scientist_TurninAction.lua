---@meta

---@class UScientist_TurninAction_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Counts TArray<int32>
---@field UpgradeDatas TArray<UFS_ItemData_C>
local UScientist_TurninAction_C = {}

function UScientist_TurninAction_C:DoneGiving() end

---@param EntryPoint int32
function UScientist_TurninAction_C:ExecuteUbergraph_Scientist_TurninAction(EntryPoint) end

---@param OutputPin UFS_ItemData_C
function UScientist_TurninAction_C:FindDataToSubmit(OutputPin) end

---@param Context AActor
function UScientist_TurninAction_C:RunActionWithinContext(Context) end

function UScientist_TurninAction_C:TurnInEggs() end
