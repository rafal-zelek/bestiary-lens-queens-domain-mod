---@meta

---@class UOptionsMenu_ResolutionSelector_C : UOptionsMenu_OptionSelect_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Resolutions TArray<FIntPoint>
---@field Swapped FOptionsMenu_ResolutionSelector_CSwapped
---@field WindowResEntry int32
local UOptionsMenu_ResolutionSelector_C = {}

function UOptionsMenu_ResolutionSelector_C:Construct() end

function UOptionsMenu_ResolutionSelector_C:Decrement() end

---@param EntryPoint int32
function UOptionsMenu_ResolutionSelector_C:ExecuteUbergraph_OptionsMenu_ResolutionSelector(EntryPoint) end

function UOptionsMenu_ResolutionSelector_C:Increment() end

---@param IsDesignTime boolean
function UOptionsMenu_ResolutionSelector_C:PreConstruct(IsDesignTime) end

---@param X int32
---@param Y int32
---@param Result FText
function UOptionsMenu_ResolutionSelector_C:ResToDisplay(X, Y, Result) end

---@param Template UFS_SystemSave_C
function UOptionsMenu_ResolutionSelector_C:Revert(Template) end

function UOptionsMenu_ResolutionSelector_C:SaveProperty() end

function UOptionsMenu_ResolutionSelector_C:SetUpOptions() end

function UOptionsMenu_ResolutionSelector_C:Swapped__DelegateSignature() end
