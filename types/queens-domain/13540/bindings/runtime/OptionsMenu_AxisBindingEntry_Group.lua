---@meta

---@class UOptionsMenu_AxisBindingEntry_Group_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BG UImage
---@field OptionsMenu_AxisBinding_Primary UOptionsMenu_AxisBinding_C
---@field OptionsMenu_AxisBinding_Secondary UOptionsMenu_AxisBinding_C
---@field Name FText
---@field List UOptionsList_base_C
---@field ['1isSelected'] boolean
---@field ['2isSelected'] boolean
---@field ActionName FName
---@field Negative boolean
---@field DisableOnConsole boolean
---@field ['Movement Axis'] boolean
---@field ['Look Axis'] boolean
local UOptionsMenu_AxisBindingEntry_Group_C = {}

function UOptionsMenu_AxisBindingEntry_Group_C:Construct() end

function UOptionsMenu_AxisBindingEntry_Group_C:CustomEvent_0() end

---@param EntryPoint int32
function UOptionsMenu_AxisBindingEntry_Group_C:ExecuteUbergraph_OptionsMenu_AxisBindingEntry_Group(EntryPoint) end

---@param List UOptionsList_base_C
function UOptionsMenu_AxisBindingEntry_Group_C:Init(List) end

---@param IsDesignTime boolean
function UOptionsMenu_AxisBindingEntry_Group_C:PreConstruct(IsDesignTime) end

function UOptionsMenu_AxisBindingEntry_Group_C:RefreshSelection() end

---@param TemplateDefaults UFS_SystemSave_C
function UOptionsMenu_AxisBindingEntry_Group_C:RevertToDefault(TemplateDefaults) end

---@param Button UFS_Button_C
UOptionsMenu_AxisBindingEntry_Group_C['1Deselected'] = function(self, Button) end

---@param Button UFS_Button_C
UOptionsMenu_AxisBindingEntry_Group_C['1Selected'] = function(self, Button) end

---@param Button UFS_Button_C
UOptionsMenu_AxisBindingEntry_Group_C['2Deselected'] = function(self, Button) end

---@param Button UFS_Button_C
UOptionsMenu_AxisBindingEntry_Group_C['2Selected'] = function(self, Button) end
