---@meta

---@class UControl_OptionsList_C : UOptionsList_base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AccelOption UOptionsMenu_Entry_C
---@field AnalogStickEnableToggle UOptionsMenu_ToggleControl_C
---@field AnalogSticks UOptionsMenu_Entry_C
---@field DeadzoneOption UOptionsMenu_Entry_C
---@field EnableGamepad UOptionsMenu_Entry_C
---@field EnableGamepad_Toggle UOptionsMenu_ToggleControl_C
---@field GamepadBindings UOptionsMenu_Entry_C
---@field GamepadStyle UOptionsMenu_Entry_C
---@field HoldInteractToRun_1 UOptionsMenu_Entry_C
---@field InvertGamepadXOption UOptionsMenu_Entry_C
---@field InvertGamepadYOption UOptionsMenu_Entry_C
---@field InvertMouseXOption UOptionsMenu_Entry_C
---@field InvertMouseYOption UOptionsMenu_Entry_C
---@field KeyboardBindings UOptionsMenu_Entry_C
---@field LockMouseToWindow UOptionsMenu_Entry_C
---@field LookSensitivityOption UOptionsMenu_Entry_C
---@field MouseLook UOptionsMenu_Entry_C
---@field MouseLookToggle UOptionsMenu_ToggleControl_C
---@field MouseSensitivityOption UOptionsMenu_Entry_C
---@field OptionsList UScrollBox
---@field OptionsMenu_GenericButton UOptionsMenu_GenericButton_C
---@field OptionsMenu_GenericButton_1 UOptionsMenu_GenericButton_C
---@field OptionsMenu_OptionSelect_1 UOptionsMenu_OptionSelect_C
---@field OptionsMenu_SliderControl UOptionsMenu_SliderControl_C
---@field OptionsMenu_SliderControl_1 UOptionsMenu_SliderControl_C
---@field OptionsMenu_SliderControl_2 UOptionsMenu_SliderControl_C
---@field OptionsMenu_SliderControl_3 UOptionsMenu_SliderControl_C
---@field OptionsMenu_SliderControl_4 UOptionsMenu_SliderControl_C
---@field OptionsMenu_ToggleControl UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_1 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_2 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_3 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_4 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_5 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_6 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_8 UOptionsMenu_ToggleControl_C
---@field ResetHighlight UImage
---@field ResetToDefaultButton UFS_Button_C
---@field RumbleStrengthOption UOptionsMenu_Entry_C
---@field SwapAnalogStickToggle UOptionsMenu_ToggleControl_C
---@field SwapSticks UOptionsMenu_Entry_C
---@field TapToRun_Gamepad UOptionsMenu_Entry_C
---@field TapToRun_KBM UOptionsMenu_Entry_C
local UControl_OptionsList_C = {}

function UControl_OptionsList_C:BndEvt__Control_OptionsList_EnableGamepad_Toggle_K2Node_ComponentBoundEvent_6_Swapped__DelegateSignature() end

function UControl_OptionsList_C:BndEvt__Control_OptionsList_MouseLookToggle_K2Node_ComponentBoundEvent_8_Swapped__DelegateSignature() end

function UControl_OptionsList_C:BndEvt__Control_OptionsList_OptionsMenu_GenericButton_1_K2Node_ComponentBoundEvent_5_ButtonClicked__DelegateSignature() end

function UControl_OptionsList_C:BndEvt__Control_OptionsList_OptionsMenu_GenericButton_K2Node_ComponentBoundEvent_0_ButtonClicked__DelegateSignature() end

function UControl_OptionsList_C:BndEvt__Control_OptionsList_OptionsMenu_OptionSelect_1_K2Node_ComponentBoundEvent_0_OptionChanged__DelegateSignature() end

function UControl_OptionsList_C:BndEvt__Control_OptionsList_OptionsMenu_ToggleControl_2_K2Node_ComponentBoundEvent_2_Swapped__DelegateSignature() end

function UControl_OptionsList_C:BndEvt__Control_OptionsList_OptionsMenu_ToggleControl_3_K2Node_ComponentBoundEvent_1_Swapped__DelegateSignature() end

function UControl_OptionsList_C:BndEvt__Control_OptionsList_OptionsMenu_ToggleControl_7_K2Node_ComponentBoundEvent_7_Swapped__DelegateSignature() end

---@param Button UCommonButtonBase
function UControl_OptionsList_C:BndEvt__Control_OptionsList_ResetToDefaultButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

function UControl_OptionsList_C:CancelledRevert() end

function UControl_OptionsList_C:Construct() end

---@param EntryPoint int32
function UControl_OptionsList_C:ExecuteUbergraph_Control_OptionsList(EntryPoint) end

---@param First UWidget
function UControl_OptionsList_C:GetFirstWidget(First) end

function UControl_OptionsList_C:Open() end

---@param IsDesignTime boolean
function UControl_OptionsList_C:PreConstruct(IsDesignTime) end

function UControl_OptionsList_C:RefreshBindingOptionText() end

function UControl_OptionsList_C:RefreshLookText() end

function UControl_OptionsList_C:RefreshPerPlatformOptionText() end

function UControl_OptionsList_C:UpdateGamepadOptions() end
