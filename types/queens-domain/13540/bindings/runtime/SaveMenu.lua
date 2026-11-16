---@meta

---@class USaveMenu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Saved UWidgetAnimation
---@field AreaName UCommonTextBlock
---@field ConfirmButton UFS_Button_C
---@field LeaveButton UFS_Button_C
---@field LocationName UCommonTextBlock
---@field RestButton UFS_Button_C
---@field SaveButton UFS_Button_C
---@field SaveSlotWidget USaveSlotWidget_C
---@field Screen UCanvasPanel
---@field ShopButton_1 UFS_Button_C
---@field ShopButtonBox USizeBox
---@field Text_1 UCommonTextBlock
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field WidgetSwitcher_0 UWidgetSwitcher
---@field DisableShopButton boolean
---@field Area UAreaName_C
---@field Checkpoint ACheckpoint_C
---@field Saving boolean
---@field Removed boolean
local USaveMenu_C = {}

---@param Button UCommonButtonBase
function USaveMenu_C:BndEvt__SaveMenu_RestButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function USaveMenu_C:BndEvt__SavedPopup_ConfirmButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function USaveMenu_C:BndEvt__SavedPopup_LeaveButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function USaveMenu_C:BndEvt__SavedPopup_SaveButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function USaveMenu_C:BndEvt__SavedPopup_ShopButton_1_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end

function USaveMenu_C:Close() end

function USaveMenu_C:Construct() end

function USaveMenu_C:DoneSaving() end

function USaveMenu_C:Dot1() end

function USaveMenu_C:Dot2() end

function USaveMenu_C:Dot3() end

---@param EntryPoint int32
function USaveMenu_C:ExecuteUbergraph_SaveMenu(EntryPoint) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function USaveMenu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

function USaveMenu_C:SequenceEvent__ENTRYPOINTSaveMenu_0() end

function USaveMenu_C:SequenceEvent__ENTRYPOINTSaveMenu_1() end

function USaveMenu_C:SequenceEvent__ENTRYPOINTSaveMenu_2() end

function USaveMenu_C:SequenceEvent__ENTRYPOINTSaveMenu_3() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function USaveMenu_C:Tick(MyGeometry, InDeltaTime) end
