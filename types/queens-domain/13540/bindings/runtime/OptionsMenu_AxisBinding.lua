---@meta

---@class UOptionsMenu_AxisBinding_C : UOptionsMenu_BindingEntry_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NegativeAxis boolean
---@field MovementAxis boolean
---@field LookAxis boolean
local UOptionsMenu_AxisBinding_C = {}

function UOptionsMenu_AxisBinding_C:ClearBinding() end

function UOptionsMenu_AxisBinding_C:Clicked() end

---@param Key FKey
---@param Cancel boolean
function UOptionsMenu_AxisBinding_C:CustomEvent(Key, Cancel) end

---@param EntryPoint int32
function UOptionsMenu_AxisBinding_C:ExecuteUbergraph_OptionsMenu_AxisBinding(EntryPoint) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_AxisBinding_C:OnPreviewKeyDown_0(MyGeometry, InKeyEvent) end

function UOptionsMenu_AxisBinding_C:RefreshDisplay() end
