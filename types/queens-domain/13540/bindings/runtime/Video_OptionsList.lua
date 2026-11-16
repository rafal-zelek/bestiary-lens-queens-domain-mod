---@meta

---@class UVideo_OptionsList_C : UOptionsList_base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ApplyButton UFS_Button_C
---@field ApplyHighlight UImage
---@field ApplyResOption USizeBox
---@field AspectRatioMode UOptionsMenu_Entry_C
---@field AspectRatioModeSelect UOptionsMenu_OptionSelect_C
---@field Brightness UOptionsMenu_Entry_C
---@field CrosshairMode UOptionsMenu_Entry_C
---@field CrosshairModeSelect UOptionsMenu_OptionSelect_C
---@field ForceRetroScale UOptionsMenu_Entry_C
---@field FOV UOptionsMenu_Entry_C
---@field FPSCapSelect UOptionsMenu_OptionSelect_C
---@field FrameRate UOptionsMenu_Entry_C
---@field HideEnemyHealthBar UOptionsMenu_Entry_C
---@field HideHUD_1 UOptionsMenu_Entry_C
---@field OptionsList UScrollBox
---@field OptionsMenu_ResolutionSelector UOptionsMenu_ResolutionSelector_C
---@field OptionsMenu_SliderControl UOptionsMenu_SliderControl_C
---@field OptionsMenu_SliderControl_1 UOptionsMenu_SliderControl_C
---@field OptionsMenu_SliderControl_2 UOptionsMenu_SliderControl_C
---@field OptionsMenu_ToggleControl UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_1 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_ToggleControl_2 UOptionsMenu_ToggleControl_C
---@field OptionsMenu_WindowModeSelector UOptionsMenu_WindowModeSelector_C
---@field ResetHighlight UImage
---@field ResetToDefaultButton UFS_Button_C
---@field Resolution UOptionsMenu_Entry_C
---@field ResScale UOptionsMenu_Entry_C
---@field RetroResToggle UOptionsMenu_ToggleControl_C
---@field TextureStreaming UOptionsMenu_Entry_C
---@field TextureStreamingToggle UOptionsMenu_ToggleControl_C
---@field ThinFont UOptionsMenu_Entry_C
---@field Vsync UOptionsMenu_Entry_C
---@field VsyncSelector UOptionsMenu_ToggleControl_C
---@field WindowMode UOptionsMenu_Entry_C
---@field CachedScreenRes FIntPoint
---@field CachedVsync boolean
---@field CachedFSMode EWindowMode::Type
---@field ConfigVisInst AVideoConfigVisualizer_C
---@field ApplyWasExit boolean
---@field WindowModeSizeCache FVector2D
---@field WindowModeSelectionCache int32
---@field IntroVis boolean
---@field BaseLightingVis boolean
---@field StartingTargetView AActor
local UVideo_OptionsList_C = {}

---@param Button UCommonButtonBase
function UVideo_OptionsList_C:BndEvt__Video_OptionsList_ApplyButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

function UVideo_OptionsList_C:BndEvt__Video_OptionsList_AspectRatioModeSelect_K2Node_ComponentBoundEvent_5_OptionChanged__DelegateSignature() end

function UVideo_OptionsList_C:BndEvt__Video_OptionsList_OptionsMenu_ResolutionSelector_K2Node_ComponentBoundEvent_2_Swapped__DelegateSignature() end

function UVideo_OptionsList_C:BndEvt__Video_OptionsList_OptionsMenu_ToggleControl_2_K2Node_ComponentBoundEvent_6_Swapped__DelegateSignature() end

function UVideo_OptionsList_C:BndEvt__Video_OptionsList_OptionsMenu_ToggleControl_K2Node_ComponentBoundEvent_1_Swapped__DelegateSignature() end

function UVideo_OptionsList_C:BndEvt__Video_OptionsList_OptionsMenu_ToggleControl_K2Node_ComponentBoundEvent_9_Swapped__DelegateSignature() end

function UVideo_OptionsList_C:BndEvt__Video_OptionsList_OptionsMenu_WindowModeSelector_K2Node_ComponentBoundEvent_0_Switched__DelegateSignature() end

---@param Button UCommonButtonBase
function UVideo_OptionsList_C:BndEvt__Video_OptionsList_ResetToDefaultButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

function UVideo_OptionsList_C:BndEvt__Video_OptionsList_RetroResToggle_1_K2Node_ComponentBoundEvent_7_Swapped__DelegateSignature() end

function UVideo_OptionsList_C:BndEvt__Video_OptionsList_VsyncSelector_1_K2Node_ComponentBoundEvent_3_Swapped__DelegateSignature() end

function UVideo_OptionsList_C:CacheReversionTarget() end

function UVideo_OptionsList_C:CanApplyRes() end

function UVideo_OptionsList_C:CancelledRevert() end

function UVideo_OptionsList_C:Close() end

function UVideo_OptionsList_C:Construct() end

function UVideo_OptionsList_C:DoApplyProcess() end

function UVideo_OptionsList_C:DoRevertProcess() end

---@param EntryPoint int32
function UVideo_OptionsList_C:ExecuteUbergraph_Video_OptionsList(EntryPoint) end

---@param First UWidget
function UVideo_OptionsList_C:GetFirstWidget(First) end

function UVideo_OptionsList_C:ModalCancelled() end

function UVideo_OptionsList_C:ModalConfirmed() end

function UVideo_OptionsList_C:Open() end

---@param IsDesignTime boolean
function UVideo_OptionsList_C:PreConstruct(IsDesignTime) end

function UVideo_OptionsList_C:RefreshApplyButton() end

function UVideo_OptionsList_C:RefreshScreen() end

function UVideo_OptionsList_C:RefreshVSyncState() end

function UVideo_OptionsList_C:Revert() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UVideo_OptionsList_C:Tick(MyGeometry, InDeltaTime) end

---@param bEnable boolean
function UVideo_OptionsList_C:ToggleVSync(bEnable) end

function UVideo_OptionsList_C:UpdateFPSCaps() end

function UVideo_OptionsList_C:UpdateWindowedModeRes() end

function UVideo_OptionsList_C:donewithfail() end

function UVideo_OptionsList_C:refreshfontoption() end
