---@meta

---@class UScientist_CheckForFinished_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field UpgradeDatas TArray<UFS_ItemData_C>
---@field DatasToDialogues TMap<UFS_ItemData_C, UFS_DialogueData>
local UScientist_CheckForFinished_C = {}

---@param EntryPoint int32
function UScientist_CheckForFinished_C:ExecuteUbergraph_Scientist_CheckForFinished(EntryPoint) end

---@param OutputPin UFS_ItemData_C
function UScientist_CheckForFinished_C:FindDataToSubmit(OutputPin) end

---@param Context AActor
function UScientist_CheckForFinished_C:RunActionWithinContext(Context) end
