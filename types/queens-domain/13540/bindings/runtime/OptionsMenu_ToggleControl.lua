---@meta

---@class UOptionsMenu_ToggleControl_C : UOptionsMenu_Control_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TurnOn UWidgetAnimation
---@field FS_Button_Toggle UFS_Button_C
---@field Highlight UImage
---@field SelectionIndicator UBorder
---@field Shade UImage
---@field UIArea UUIArea_C
---@field ['Menu Entry'] UOptionsMenu_Entry_C
---@field Property FName
---@field ToggleButtons TSet<FKey>
---@field CurrentValue boolean
---@field Swapped FOptionsMenu_ToggleControl_CSwapped
---@field SelectedBGColor FLinearColor
---@field UnSelectedBGColor FLinearColor
local UOptionsMenu_ToggleControl_C = {}

---@param Button UCommonButtonBase
function UOptionsMenu_ToggleControl_C:BndEvt__OptionsMenu_ToggleControl_FS_Button_Off_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UOptionsMenu_ToggleControl_C:BndEvt__OptionsMenu_ToggleControl_FS_Button_Toggle_K2Node_ComponentBoundEvent_2_Hovered__DelegateSignature() end

function UOptionsMenu_ToggleControl_C:BndEvt__OptionsMenu_ToggleControl_FS_Button_Toggle_K2Node_ComponentBoundEvent_3_Unhovered__DelegateSignature() end

function UOptionsMenu_ToggleControl_C:Construct() end

---@param EntryPoint int32
function UOptionsMenu_ToggleControl_C:ExecuteUbergraph_OptionsMenu_ToggleControl(EntryPoint) end

function UOptionsMenu_ToggleControl_C:ExternalToggle() end

---@param MenuEntry UOptionsMenu_Entry_C
function UOptionsMenu_ToggleControl_C:Init(MenuEntry) end

function UOptionsMenu_ToggleControl_C:PlayRelevantToggleAnim() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_ToggleControl_C:ReceiveKeyDown(MyGeometry, InKeyEvent) end

function UOptionsMenu_ToggleControl_C:Refresh() end

function UOptionsMenu_ToggleControl_C:RefreshState() end

---@param Template UFS_SystemSave_C
function UOptionsMenu_ToggleControl_C:Revert(Template) end

function UOptionsMenu_ToggleControl_C:SaveProperty() end

---@param Selected boolean
function UOptionsMenu_ToggleControl_C:Selected(Selected) end

---@param Selected boolean
function UOptionsMenu_ToggleControl_C:SetSelected(Selected) end

function UOptionsMenu_ToggleControl_C:Swapped__DelegateSignature() end
