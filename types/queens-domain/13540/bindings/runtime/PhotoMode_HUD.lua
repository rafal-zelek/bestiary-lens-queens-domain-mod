---@meta

---@class UPhotoMode_HUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TookPhoto UWidgetAnimation
---@field BlueControl UOptionsMenu_SliderControl_C
---@field Border UBorder
---@field Border_0 UBorder
---@field BrightnessControl UOptionsMenu_SliderControl_C
---@field ContrastControl UOptionsMenu_SliderControl_C
---@field EnableSteamScreenshot_Toggle UOptionsMenu_ToggleControl_C
---@field FOVValue UCommonTextBlock
---@field GreenControl UOptionsMenu_SliderControl_C
---@field Guide UImage
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field OpenScreenshotFodlerButton UFS_Button_C
---@field OpenScreenshotFolder USizeBox
---@field Options UVerticalBox
---@field OptionsMenu_Entry UOptionsMenu_Entry_C
---@field OptionsMenu_Entry_1 UOptionsMenu_Entry_C
---@field OptionsMenu_Entry_2 UOptionsMenu_Entry_C
---@field OptionsMenu_Entry_3 UOptionsMenu_Entry_C
---@field OptionsMenu_Entry_4 UOptionsMenu_Entry_C
---@field OptionsMenu_Entry_5 UOptionsMenu_Entry_C
---@field OptionsMenu_Entry_6 UOptionsMenu_Entry_C
---@field OptionsMenu_Entry_7 UOptionsMenu_Entry_C
---@field PalleteSelect UOptionsMenu_OptionSelect_C
---@field PanelSwitcher UWidgetSwitcher
---@field RedControl UOptionsMenu_SliderControl_C
---@field ResetToDefaultButton UFS_Button_C
---@field SaturationControl UOptionsMenu_SliderControl_C
---@field ScreenshotHint UMenuButtonHintWidget_C
---@field TiltValue UCommonTextBlock
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field UpdateColor FPhotoMode_HUD_CUpdateColor
---@field Palletes UPhotoMode_Filters_C
---@field PhotoPawn APhotomode_Pawn_C
---@field UseSteamScreenshots boolean
---@field OptionsOpenHints TArray<FButtonHint>
---@field RmbDown FVector2D
---@field OptionsEnabled boolean
---@field lastselectedentry UFS_Button_C
local UPhotoMode_HUD_C = {}

---@param Val float
function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_BlueControl_K2Node_ComponentBoundEvent_5_ValueChanged__DelegateSignature(Val) end

---@param Val float
function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_BrightnessControl_K2Node_ComponentBoundEvent_1_ValueChanged__DelegateSignature(Val) end

---@param Val float
function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_ContrastControl_K2Node_ComponentBoundEvent_2_ValueChanged__DelegateSignature(Val) end

---@param Val float
function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_GreenControl_K2Node_ComponentBoundEvent_3_ValueChanged__DelegateSignature(Val) end

---@param Button UCommonButtonBase
function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_OpenScreenshotFodlerButton_K2Node_ComponentBoundEvent_9_CommonButtonBaseClicked__DelegateSignature(Button) end

function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_OptionsMenu_ToggleControl_K2Node_ComponentBoundEvent_8_Swapped__DelegateSignature() end

function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_PalleteSelect_K2Node_ComponentBoundEvent_0_OptionChanged__DelegateSignature() end

---@param Val float
function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_RedControl_K2Node_ComponentBoundEvent_4_ValueChanged__DelegateSignature(Val) end

---@param Button UCommonButtonBase
function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_ResetToDefaultButton_K2Node_ComponentBoundEvent_7_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Val float
function UPhotoMode_HUD_C:BndEvt__PhotoMode_HUD_SaturationControl_K2Node_ComponentBoundEvent_6_ValueChanged__DelegateSignature(Val) end

function UPhotoMode_HUD_C:Construct() end

---@param Button UFS_Button_C
function UPhotoMode_HUD_C:CustomEvent_0(Button) end

---@param EntryPoint int32
function UPhotoMode_HUD_C:ExecuteUbergraph_PhotoMode_HUD(EntryPoint) end

function UPhotoMode_HUD_C:InitOptions() end

function UPhotoMode_HUD_C:InitPalleteOptions() end

function UPhotoMode_HUD_C:IsSteamAvailable() end

function UPhotoMode_HUD_C:ManageFocus() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UPhotoMode_HUD_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param IsDesignTime boolean
function UPhotoMode_HUD_C:PreConstruct(IsDesignTime) end

function UPhotoMode_HUD_C:RefreshScreenshotFolderButtonVis() end

function UPhotoMode_HUD_C:RefreshScreenshotFolderVis() end

---@param Enabled boolean
function UPhotoMode_HUD_C:SetOptionsEnabled(Enabled) end

function UPhotoMode_HUD_C:TakeScreenshot() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UPhotoMode_HUD_C:Tick(MyGeometry, InDeltaTime) end

function UPhotoMode_HUD_C:UpdateColor__DelegateSignature() end

function UPhotoMode_HUD_C:UpdateInfo() end
