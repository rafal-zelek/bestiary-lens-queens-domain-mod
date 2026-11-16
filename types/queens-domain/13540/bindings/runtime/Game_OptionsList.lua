---@meta

---@class UGame_OptionsList_C : UOptionsList_base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AutoAddToQuickUse UOptionsMenu_Entry_C
---@field AutoPutAway UOptionsMenu_Entry_C
---@field BestiaryNotifsOn UOptionsMenu_Entry_C
---@field ChallengeNotifsOn_1 UOptionsMenu_Entry_C
---@field GuideNotifsOn UOptionsMenu_Entry_C
---@field OptionsList UScrollBox
---@field OptionsMenu_ToggleControl_4 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_5 UOptionsMenu_ToggleControl_C
---@field PauseWhenUnfocused UOptionsMenu_Entry_C
---@field PauseWhenUnfocusedToggle UOptionsMenu_ToggleControl_C
---@field PauseWhenUnfocusedToggle_1 UOptionsMenu_ToggleControl_C
---@field PauseWhenUnfocusedToggle_2 UOptionsMenu_ToggleControl_C
---@field PauseWhenUnfocusedToggle_3 UOptionsMenu_ToggleControl_C
---@field PauseWhenUnfocusedToggle_4 UOptionsMenu_ToggleControl_C
---@field PauseWhenUnfocusedToggle_5 UOptionsMenu_ToggleControl_C
---@field ResetHighlight UImage
---@field ResetToDefaultButton UFS_Button_C
---@field ScreenShake UOptionsMenu_Entry_C
---@field ShowCompass UOptionsMenu_Entry_C
---@field CrosshairDA UCrosshairs_C
local UGame_OptionsList_C = {}

function UGame_OptionsList_C:BndEvt__Game_OptionsList_PauseWhenUnfocusedToggle_3_K2Node_ComponentBoundEvent_0_Swapped__DelegateSignature() end

---@param Button UCommonButtonBase
function UGame_OptionsList_C:BndEvt__HUD_OptionsList_ResetToDefaultButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UGame_OptionsList_C:CancelledRevert() end

function UGame_OptionsList_C:Construct() end

---@param EntryPoint int32
function UGame_OptionsList_C:ExecuteUbergraph_Game_OptionsList(EntryPoint) end

---@param First UWidget
function UGame_OptionsList_C:GetFirstWidget(First) end

---@param IsDesignTime boolean
function UGame_OptionsList_C:PreConstruct(IsDesignTime) end
