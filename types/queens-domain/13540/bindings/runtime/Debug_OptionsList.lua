---@meta

---@class UDebug_OptionsList_C : UOptionsList_base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DisableStickTuning UOptionsMenu_Entry_C
---@field E3Cam UOptionsMenu_Entry_C
---@field E3CamSpeed UOptionsMenu_Entry_C
---@field HideHUD UOptionsMenu_Entry_C
---@field OptionsList UScrollBox
---@field OptionsMenu_SliderControl UOptionsMenu_SliderControl_C
---@field OptionsMenu_ToggleControl UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_1 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_2 UOptionsMenu_ToggleControl_C
---@field ResetAchievementsButton UFS_Button_C
---@field ResetHighlight UImage
local UDebug_OptionsList_C = {}

function UDebug_OptionsList_C:BndEvt__Debug_OptionsList_OptionsMenu_ToggleControl_K2Node_ComponentBoundEvent_1_Swapped__DelegateSignature() end

---@param Button UCommonButtonBase
function UDebug_OptionsList_C:BndEvt__Debug_OptionsList_ResetToDefaultButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

function UDebug_OptionsList_C:Construct() end

---@param EntryPoint int32
function UDebug_OptionsList_C:ExecuteUbergraph_Debug_OptionsList(EntryPoint) end

---@param First UWidget
function UDebug_OptionsList_C:GetFirstWidget(First) end

---@param IsDesignTime boolean
function UDebug_OptionsList_C:PreConstruct(IsDesignTime) end
