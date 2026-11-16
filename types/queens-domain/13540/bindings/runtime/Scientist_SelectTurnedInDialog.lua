---@meta

---@class UScientist_SelectTurnedInDialog_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field UpgradeDatas TArray<UFS_ItemData_C>
---@field DatasToDialogues TMap<UFS_ItemData_C, UFS_DialogueData>
local UScientist_SelectTurnedInDialog_C = {}

---@param EntryPoint int32
function UScientist_SelectTurnedInDialog_C:ExecuteUbergraph_Scientist_SelectTurnedInDialog(EntryPoint) end

---@param OutputPin UFS_ItemData_C
function UScientist_SelectTurnedInDialog_C:FindDataToSubmit(OutputPin) end

---@param Context AActor
function UScientist_SelectTurnedInDialog_C:RunActionWithinContext(Context) end
