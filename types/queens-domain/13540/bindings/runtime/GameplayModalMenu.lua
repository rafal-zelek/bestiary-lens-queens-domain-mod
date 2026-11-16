---@meta

---@class UGameplayModalMenu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Open UWidgetAnimation
---@field Body UCommonTextBlock
---@field CancelButton UFS_Button_C
---@field CancelButtonContainer USizeBox
---@field ConfirmButton UFS_Button_C
---@field ConfirmDialogueText UCommonTextBlock
---@field ExitDialogue UCanvasPanel
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field UseItemDenyGraphic_3 UBorder
---@field ModalOpen boolean
---@field ModalOpenTime float
---@field Cancel FGameplayModalMenu_CCancel
---@field Confirm FGameplayModalMenu_CConfirm
---@field Closing boolean
---@field LastFocusedOption UWidget
---@field LockedOut boolean
---@field Title FText
---@field Question FText
local UGameplayModalMenu_C = {}

---@param Button UCommonButtonBase
function UGameplayModalMenu_C:BndEvt__OptionsMenu_ModalConfirmButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UGameplayModalMenu_C:BndEvt__OptionsMenu_modalCancelButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

function UGameplayModalMenu_C:Cancel__DelegateSignature() end

function UGameplayModalMenu_C:Close() end

function UGameplayModalMenu_C:CloseModalDialogue() end

function UGameplayModalMenu_C:Confirm__DelegateSignature() end

function UGameplayModalMenu_C:Construct() end

function UGameplayModalMenu_C:Done() end

---@param EntryPoint int32
function UGameplayModalMenu_C:ExecuteUbergraph_GameplayModalMenu(EntryPoint) end

function UGameplayModalMenu_C:GetText_0() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UGameplayModalMenu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param Question FText
function UGameplayModalMenu_C:OpenExitDialogue(Question) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UGameplayModalMenu_C:Tick(MyGeometry, InDeltaTime) end
