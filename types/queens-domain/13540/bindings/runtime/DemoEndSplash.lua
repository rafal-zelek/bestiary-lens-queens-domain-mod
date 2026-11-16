---@meta

---@class UDemoEndSplash_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SwapToThanksPanel UWidgetAnimation
---@field FadeIn UWidgetAnimation
---@field FadeOut UWidgetAnimation
---@field BG UImage
---@field ButtonsCanvas UCanvasPanel
---@field Image_208 UImage
---@field QuitToDesktopButton UFS_Button_C
---@field QuitTomenuButton UFS_Button_C
---@field SkipFocus UButton
---@field THanksForPlayingText UCommonTextBlock
---@field ThanksPanel UCanvasPanel
---@field Video UImage
---@field WishlistButton UWishlistButton_C
---@field GoAble boolean
---@field VideoPlayer UMediaPlayer
---@field MediaTexture UMediaTexture
---@field VideoIsPlaying boolean
---@field VideoSoundFade float
local UDemoEndSplash_C = {}

---@param Button UCommonButtonBase
function UDemoEndSplash_C:BndEvt__DieUI_QuitToDesktopButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UDemoEndSplash_C:BndEvt__DieUI_QuitTomenuButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

function UDemoEndSplash_C:Construct() end

function UDemoEndSplash_C:End() end

---@param EntryPoint int32
function UDemoEndSplash_C:ExecuteUbergraph_DemoEndSplash(EntryPoint) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UDemoEndSplash_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param IsDesignTime boolean
function UDemoEndSplash_C:PreConstruct(IsDesignTime) end

function UDemoEndSplash_C:Skip() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UDemoEndSplash_C:Tick(MyGeometry, InDeltaTime) end

function UDemoEndSplash_C:VideoFinished() end
