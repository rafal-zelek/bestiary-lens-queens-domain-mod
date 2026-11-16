---@meta

---@class UOptionsMenu_GenericButton_C : UOptionsMenu_Control_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Highlight UImage
---@field Label UCommonTextBlock
---@field UIArea UUIArea_C
---@field ['Menu Entry'] UOptionsMenu_Entry_C
---@field Property FName
---@field ToggleButtons TSet<FKey>
---@field ButtonClicked FOptionsMenu_GenericButton_CButtonClicked
---@field Name FText
local UOptionsMenu_GenericButton_C = {}

function UOptionsMenu_GenericButton_C:BndEvt__OptionsMenu_GenericButton_FS_Button_K2Node_ComponentBoundEvent_0_Hovered__DelegateSignature() end

function UOptionsMenu_GenericButton_C:BndEvt__OptionsMenu_GenericButton_FS_Button_K2Node_ComponentBoundEvent_2_Unhovered__DelegateSignature() end

---@param Button UCommonButtonBase
function UOptionsMenu_GenericButton_C:BndEvt__OptionsMenu_ToggleControl_FS_Button_Off_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UOptionsMenu_GenericButton_C:ButtonClicked__DelegateSignature() end

function UOptionsMenu_GenericButton_C:Construct() end

---@param EntryPoint int32
function UOptionsMenu_GenericButton_C:ExecuteUbergraph_OptionsMenu_GenericButton(EntryPoint) end

function UOptionsMenu_GenericButton_C:ExternalToggle() end

---@param MenuEntry UOptionsMenu_Entry_C
function UOptionsMenu_GenericButton_C:Init(MenuEntry) end

---@param IsDesignTime boolean
function UOptionsMenu_GenericButton_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_GenericButton_C:ReceiveKeyDown(MyGeometry, InKeyEvent) end
