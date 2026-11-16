---@meta

---@class UOptionsMenu_BindingEntry_Group_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BG UImage
---@field OptionsMenu_BindingEntry UOptionsMenu_BindingEntry_C
---@field OptionsMenu_BindingEntry_1 UOptionsMenu_BindingEntry_C
---@field Name FText
---@field List UOptionsList_base_C
---@field ['1isSelected'] boolean
---@field ['2isSelected'] boolean
---@field ActionName FName
---@field PauseEntry boolean
---@field DisableOnConsole boolean
local UOptionsMenu_BindingEntry_Group_C = {}

function UOptionsMenu_BindingEntry_Group_C:Construct() end

---@param EntryPoint int32
function UOptionsMenu_BindingEntry_Group_C:ExecuteUbergraph_OptionsMenu_BindingEntry_Group(EntryPoint) end

---@param List UOptionsList_base_C
function UOptionsMenu_BindingEntry_Group_C:Init(List) end

---@param IsDesignTime boolean
function UOptionsMenu_BindingEntry_Group_C:PreConstruct(IsDesignTime) end

function UOptionsMenu_BindingEntry_Group_C:RefreshSelection() end

---@param TemplateDefaults UFS_SystemSave_C
function UOptionsMenu_BindingEntry_Group_C:RevertToDefault(TemplateDefaults) end

---@param Button UFS_Button_C
UOptionsMenu_BindingEntry_Group_C['1Deselected'] = function(self, Button) end

---@param Button UFS_Button_C
UOptionsMenu_BindingEntry_Group_C['1Selected'] = function(self, Button) end

---@param Button UFS_Button_C
UOptionsMenu_BindingEntry_Group_C['2Deselected'] = function(self, Button) end

---@param Button UFS_Button_C
UOptionsMenu_BindingEntry_Group_C['2Selected'] = function(self, Button) end
