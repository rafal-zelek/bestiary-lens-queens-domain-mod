---@meta

---@class UFS_Modal_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BG UBorder
---@field Border UBorder
---@field CancelButton UFS_Button_C
---@field CancelButtonText UCommonTextBlock
---@field ConfirmButton UFS_Button_C
---@field ConfirmButtonText UCommonTextBlock
---@field ExtraButtons UNamedSlot
---@field ExtraDescription UNamedSlot
---@field Shade UImage
---@field SizeBox_1 USizeBox
---@field Title UCommonTextBlock
---@field Window UOverlay
---@field ConfirmClicked FFS_Modal_CConfirmClicked
---@field CancelClicked FFS_Modal_CCancelClicked
---@field Opened FFS_Modal_COpened
---@field Closed FFS_Modal_CClosed
---@field IsOpen boolean
---@field OpenTime float
---@field OtherWidgetToManage UWidget
---@field ['Default to Cancel'] boolean
---@field ['Preview Text'] FText
---@field IncludeShade boolean
---@field BGBrush FSlateBrush
---@field IncludeBorder boolean
---@field FillSize boolean
---@field DisableExtraButtons boolean
---@field DisableConfirmDefault boolean
---@field HideCancelButton boolean
local UFS_Modal_C = {}

---@param Button UCommonButtonBase
function UFS_Modal_C:BndEvt__FS_Modal_CancelButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UFS_Modal_C:BndEvt__FS_Modal_ConfirmButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UFS_Modal_C:Cancel() end

function UFS_Modal_C:CancelClicked__DelegateSignature() end

function UFS_Modal_C:Close_Internal() end

function UFS_Modal_C:Closed__DelegateSignature() end

function UFS_Modal_C:ConfirmClicked__DelegateSignature() end

function UFS_Modal_C:Construct() end

---@param EntryPoint int32
function UFS_Modal_C:ExecuteUbergraph_FS_Modal(EntryPoint) end

function UFS_Modal_C:FocusDefaultButton() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UFS_Modal_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param TitleText FText
---@param ConfirmButtonText FText
---@param CancelButtonText FText
---@param DefaultToCancel boolean
---@param Confirmed FOpenModalDialogueConfirmed
---@param Cancelled FOpenModalDialogueCancelled
function UFS_Modal_C:OpenModalDialogue(TitleText, ConfirmButtonText, CancelButtonText, DefaultToCancel, Confirmed, Cancelled) end

function UFS_Modal_C:Opened__DelegateSignature() end

---@param IsDesignTime boolean
function UFS_Modal_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UFS_Modal_C:Tick(MyGeometry, InDeltaTime) end
