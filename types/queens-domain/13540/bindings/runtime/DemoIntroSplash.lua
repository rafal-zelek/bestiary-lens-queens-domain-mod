---@meta

---@class UDemoIntroSplash_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeIn UWidgetAnimation
---@field Box UCanvasPanel
---@field CloseButton UFS_Button_C
---@field GingerPic UImage
---@field LillyPic UImage
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field ScrollBox_0 UScrollBox
---@field Text UCommonRichTextBlock
---@field Closing boolean
---@field Player AFS_PlayerChar_C
---@field IsOpen boolean
---@field DisallowedExitKeys TSet<FKey>
---@field Closed FDemoIntroSplash_CClosed
local UDemoIntroSplash_C = {}

function UDemoIntroSplash_C:Close() end

function UDemoIntroSplash_C:Closed__DelegateSignature() end

function UDemoIntroSplash_C:ConfirmPressed() end

---@param EntryPoint int32
function UDemoIntroSplash_C:ExecuteUbergraph_DemoIntroSplash(EntryPoint) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UDemoIntroSplash_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UDemoIntroSplash_C:OnPreviewMouseButtonDown(MyGeometry, MouseEvent) end

---@param Player AFS_PlayerChar_C
function UDemoIntroSplash_C:Open(Player) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UDemoIntroSplash_C:Tick(MyGeometry, InDeltaTime) end
