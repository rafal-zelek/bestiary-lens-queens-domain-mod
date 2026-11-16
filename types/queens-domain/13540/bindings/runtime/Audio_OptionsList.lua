---@meta

---@class UAudio_OptionsList_C : UOptionsList_base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EffectsVolume UOptionsMenu_Entry_C
---@field HeadphonesMode UOptionsMenu_Entry_C
---@field HeadphonesMode_1 UOptionsMenu_Entry_C
---@field MusicVolume UOptionsMenu_Entry_C
---@field MusicVolume_1 UOptionsMenu_Entry_C
---@field OptionsList UScrollBox
---@field OptionsMenu_ToggleControl UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_1 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_VolumeControl UOptionsMenu_VolumeControl_C
---@field OptionsMenu_VolumeControl_1 UOptionsMenu_VolumeControl_C
---@field OptionsMenu_VolumeControl_2 UOptionsMenu_VolumeControl_C
---@field ResetHighlight UImage
---@field ResetToDefaultButton UFS_Button_C
local UAudio_OptionsList_C = {}

---@param Button UCommonButtonBase
function UAudio_OptionsList_C:BndEvt__Audio_OptionsList_ResetToDefaultButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

function UAudio_OptionsList_C:CancelledRevert() end

function UAudio_OptionsList_C:Close() end

function UAudio_OptionsList_C:Construct() end

---@param EntryPoint int32
function UAudio_OptionsList_C:ExecuteUbergraph_Audio_OptionsList(EntryPoint) end

---@param First UWidget
function UAudio_OptionsList_C:GetFirstWidget(First) end

function UAudio_OptionsList_C:Open() end

---@param IsDesignTime boolean
function UAudio_OptionsList_C:PreConstruct(IsDesignTime) end
