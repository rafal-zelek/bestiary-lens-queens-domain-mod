---@meta

---@class UFS_InspectItem_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['3DWindow'] UOverlay
---@field CancelButton UFS_Button_C
---@field CancelButtonText UCommonTextBlock
---@field CancelButtonText_2 UCommonTextBlock
---@field ConfirmButtonText UCommonTextBlock
---@field ConfirmButtonText_1 UCommonTextBlock
---@field ConsumableActions UVerticalBox
---@field DescriptionWindow UOverlay
---@field EquipButton UFS_Button_C
---@field EquippableActions UVerticalBox
---@field FS_3DWidget UFS_3DWidget_C
---@field FS_DescriptionText UFS_DescriptionText_C
---@field ItemInspect_DescriptionScrollbox UScrollBox
---@field ItemInspect_StatsSpacer UImage
---@field ItemInspect_WeaponStats UWeaponStats_C
---@field ItemTypeSwitcher UWidgetSwitcher
---@field KeyActions UVerticalBox
---@field OptionsWindow UOverlay
---@field QuickItemToggle UFS_Button_C
---@field SizeBox_1 USizeBox
---@field Title UCommonTextBlock
---@field ToggleQuickItemText UCommonTextBlock
---@field Unequip UFS_Button_C
---@field UseButton UFS_Button_C
---@field Opened FFS_InspectItem_COpened
---@field Closed FFS_InspectItem_CClosed
---@field IsOpen boolean
---@field OpenTime float
---@field OtherWidgetToManage UWidget
---@field ['Default to Cancel'] boolean
---@field ['Preview Text'] FText
---@field IncludeShade boolean
---@field BGBrush FSlateBrush
---@field IncludeBorder boolean
---@field CurrentItem UFS_ItemData_C
---@field EquipClicked FFS_InspectItem_CEquipClicked
---@field UnequipClicked FFS_InspectItem_CUnequipClicked
---@field ToggleUseItemState FFS_InspectItem_CToggleUseItemState
---@field UseItem FFS_InspectItem_CUseItem
---@field Cancelled FFS_InspectItem_CCancelled
local UFS_InspectItem_C = {}

---@param Button UCommonButtonBase
function UFS_InspectItem_C:BndEvt__FS_InspectItem_EquipButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UFS_InspectItem_C:BndEvt__FS_InspectItem_QuickItemToggle_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UFS_InspectItem_C:BndEvt__FS_InspectItem_Unequip_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UFS_InspectItem_C:BndEvt__FS_Modal_CancelButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UFS_InspectItem_C:BndEvt__FS_Modal_ConfirmButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UFS_InspectItem_C:Cancel() end

function UFS_InspectItem_C:Cancelled__DelegateSignature() end

function UFS_InspectItem_C:CloseInspectModal() end

function UFS_InspectItem_C:Close_Internal() end

function UFS_InspectItem_C:Closed__DelegateSignature() end

function UFS_InspectItem_C:Construct() end

function UFS_InspectItem_C:EquipClicked__DelegateSignature() end

---@param EntryPoint int32
function UFS_InspectItem_C:ExecuteUbergraph_FS_InspectItem(EntryPoint) end

function UFS_InspectItem_C:FocusDefaultButton() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UFS_InspectItem_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param ItemData UFS_ItemData_C
function UFS_InspectItem_C:OpenForItem(ItemData) end

---@param TitleText FText
---@param ConfirmButtonText FText
---@param CancelButtonText FText
---@param DefaultToCancel boolean
---@param OnCancel FOpenModalDialogueOnCancel
function UFS_InspectItem_C:OpenModalDialogue(TitleText, ConfirmButtonText, CancelButtonText, DefaultToCancel, OnCancel) end

function UFS_InspectItem_C:Opened__DelegateSignature() end

---@param IsDesignTime boolean
function UFS_InspectItem_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UFS_InspectItem_C:Tick(MyGeometry, InDeltaTime) end

---@param ItemData UFS_ItemData_C
function UFS_InspectItem_C:ToggleUseItemState__DelegateSignature(ItemData) end

function UFS_InspectItem_C:UnequipClicked__DelegateSignature() end

function UFS_InspectItem_C:UseItem__DelegateSignature() end
