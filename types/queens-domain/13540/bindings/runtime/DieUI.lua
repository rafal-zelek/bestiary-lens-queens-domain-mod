---@meta

---@class UDieUI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOut UWidgetAnimation
---@field FadeIn UWidgetAnimation
---@field BG UImage
---@field BigText UImage
---@field ButtonsCanvas UCanvasPanel
---@field ContinueButton UFS_Button_C
---@field DebugMenuButton UButton
---@field FadeScreen UImage
---@field LocText UCommonTextBlock
---@field QuitToDesktopButton UFS_Button_C
---@field QuitTomenuButton UFS_Button_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field WishlistButton UWishlistButton_C
---@field Closing boolean
---@field Player AFS_PlayerChar_C
---@field IsOpen boolean
---@field OpenTime float
---@field ReadyForButtons boolean
---@field NoMoreButtons boolean
---@field FadeFinished FDieUI_CFadeFinished
---@field GameOverTextVariant int32
local UDieUI_C = {}

---@param Button UCommonButtonBase
function UDieUI_C:BndEvt__DieUI_ContinueButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UDieUI_C:BndEvt__DieUI_QuitToDesktopButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UDieUI_C:BndEvt__DieUI_QuitTomenuButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

function UDieUI_C:Close() end

function UDieUI_C:Construct() end

function UDieUI_C:CustomEvent() end

function UDieUI_C:CustomEvent_1() end

function UDieUI_C:Done() end

---@param EntryPoint int32
function UDieUI_C:ExecuteUbergraph_DieUI(EntryPoint) end

function UDieUI_C:FadeFinishedEvent() end

function UDieUI_C:FadeFinished__DelegateSignature() end

function UDieUI_C:FadeOutScreen() end

function UDieUI_C:FocusButtons() end

---@param Player AFS_PlayerChar_C
---@param Text FText
function UDieUI_C:Open(Player, Text) end

---@param IsDesignTime boolean
function UDieUI_C:PreConstruct(IsDesignTime) end

function UDieUI_C:SequenceEvent__ENTRYPOINTDieUI_0() end

function UDieUI_C:SequenceEvent__ENTRYPOINTDieUI_1() end

function UDieUI_C:SequenceEvent__ENTRYPOINTDieUI_2() end

function UDieUI_C:ShowButtons() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UDieUI_C:Tick(MyGeometry, InDeltaTime) end
