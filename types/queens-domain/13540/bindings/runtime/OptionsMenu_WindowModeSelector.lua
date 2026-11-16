---@meta

---@class UOptionsMenu_WindowModeSelector_C : UOptionsMenu_OptionSelect_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Switched FOptionsMenu_WindowModeSelector_CSwitched
local UOptionsMenu_WindowModeSelector_C = {}

function UOptionsMenu_WindowModeSelector_C:Construct() end

function UOptionsMenu_WindowModeSelector_C:Decrement() end

---@param EntryPoint int32
function UOptionsMenu_WindowModeSelector_C:ExecuteUbergraph_OptionsMenu_WindowModeSelector(EntryPoint) end

function UOptionsMenu_WindowModeSelector_C:Increment() end

---@param IsDesignTime boolean
function UOptionsMenu_WindowModeSelector_C:PreConstruct(IsDesignTime) end

function UOptionsMenu_WindowModeSelector_C:Refresh() end

---@param Template UFS_SystemSave_C
function UOptionsMenu_WindowModeSelector_C:Revert(Template) end

function UOptionsMenu_WindowModeSelector_C:SaveProperty() end

function UOptionsMenu_WindowModeSelector_C:Switched__DelegateSignature() end
