---@meta

---@class UReadTextUI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeIn UWidgetAnimation
---@field Box UCanvasPanel
---@field CloseButton UFS_Button_C
---@field CloseButton_1 UFS_Button_C
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field ScrollBox_0 UScrollBox
---@field Text UCommonRichTextBlock
---@field Title UCommonRichTextBlock
---@field TitleBox UOverlay
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field Closing boolean
---@field Player AFS_PlayerChar_C
---@field IsOpen boolean
---@field DisallowedExitKeys TSet<FKey>
---@field Closed FReadTextUI_CClosed
---@field ProcessMessage boolean
local UReadTextUI_C = {}

---@param Button UCommonButtonBase
function UReadTextUI_C:BndEvt__ReadTextUI_CloseButton_1_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UReadTextUI_C:BndEvt__ReadTextUI_CloseButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UReadTextUI_C:Close() end

function UReadTextUI_C:Closed__DelegateSignature() end

function UReadTextUI_C:ConfirmPressed() end

---@param EntryPoint int32
function UReadTextUI_C:ExecuteUbergraph_ReadTextUI(EntryPoint) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UReadTextUI_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UReadTextUI_C:OnPreviewMouseButtonDown(MyGeometry, MouseEvent) end

---@param Player AFS_PlayerChar_C
---@param Text FText
---@param Title FText
---@param InspectMode boolean
function UReadTextUI_C:Open(Player, Text, Title, InspectMode) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UReadTextUI_C:Tick(MyGeometry, InDeltaTime) end

function UReadTextUI_C:UpdateFontStyle() end
