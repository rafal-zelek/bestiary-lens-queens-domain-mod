---@meta

---@class UGameMenu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FailedToUseItem UWidgetAnimation
---@field Open UWidgetAnimation
---@field AccessorySlot1 UEquipDisplay_C
---@field AccessorySlot2 UEquipDisplay_C
---@field AccessorySlot3 UEquipDisplay_C
---@field CategoryList UCategoryList_C
---@field CoinDisplay UItemDisplay_C
---@field DaggerSlot1 UEquipDisplay_C
---@field DaggerSlot2 UEquipDisplay_C
---@field DaggerSlot3 UEquipDisplay_C
---@field DescriptionScrollbox UScrollBox
---@field EquipMenuSlot_0 UEquipDisplay_C
---@field EquipMenuSlot_1 UEquipDisplay_C
---@field EquipMenuSlot_2 UEquipDisplay_C
---@field EquipModal UFS_Modal_C
---@field EquipSlots UVerticalBox
---@field EquipToSlot_1 UFS_Button_C
---@field EquipToSlot_2 UFS_Button_C
---@field EquipToSlot_3 UFS_Button_C
---@field EquipToSlotsBox UVerticalBox
---@field FS_DescriptionText UFS_DescriptionText_C
---@field FS_InspectItem UFS_InspectItem_C
---@field FS_Modal UFS_Modal_C
---@field Image UImage
---@field Image_1 UImage
---@field Image_136 UImage
---@field InteractibleArea UHorizontalBox
---@field Inventory UVerticalBox
---@field InventoryEntry UInventoryEntry_C
---@field InventoryEntry_1 UInventoryEntry_C
---@field InventoryEntry_2 UInventoryEntry_C
---@field InventoryEntry_3 UInventoryEntry_C
---@field InventoryEntry_4 UInventoryEntry_C
---@field InventoryEntry_5 UInventoryEntry_C
---@field InventoryEntry_6 UInventoryEntry_C
---@field InventoryEntry_7 UInventoryEntry_C
---@field ItemActionModal UFS_Modal_C
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field MoneyBox UCanvasPanel
---@field PlayerAttributes UPlayerAttributes_C
---@field QuickSlotText UCommonTextBlock
---@field ScrollBox_211 UScrollBox
---@field ToggleQuickUseButton UFS_Button_C
---@field UIArea_264 UUIArea_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field WeaponSlot_1 UEquipDisplay_C
---@field WeaponSlot_2 UEquipDisplay_C
---@field WeaponSlot_3 UEquipDisplay_C
---@field WeaponStats UWeaponStats_C
---@field WeaponStatsSeparator UImage
---@field InventoryEntries TArray<UInventoryEntry_C>
---@field LastSelectedInventoryIndex int32
---@field NonInventoryItemTypes TSet<UFS_ItemData_C>
---@field ItemActionOpen boolean
---@field ['ItemWe\'reActioningOn'] UFS_ItemData_C
---@field SelectedCategory ItemCategory::Type
---@field ['Player Config'] UPlayerBalance_C
---@field CurrentlyEquippedItems TArray<UFS_ItemData_C>
---@field EquippableMenuHints TArray<FButtonHint>
---@field CanUnequip boolean
---@field SelectedItem UFS_ItemData_C
---@field InspectMenuHints TArray<FButtonHint>
---@field blockselectionchange boolean
---@field DenyingThrowableEquip boolean
---@field Closed boolean
---@field BlockUnPause boolean
local UGameMenu_C = {}

---@param Index int32
function UGameMenu_C:BndEvt__GameMenu_CategoryList_K2Node_ComponentBoundEvent_9_CategoryChanged__DelegateSignature(Index) end

function UGameMenu_C:BndEvt__GameMenu_EquipModal_K2Node_ComponentBoundEvent_0_Closed__DelegateSignature() end

function UGameMenu_C:BndEvt__GameMenu_EquipModal_K2Node_ComponentBoundEvent_1_Opened__DelegateSignature() end

---@param Button UFS_Button_C
function UGameMenu_C:BndEvt__GameMenu_EquipToSlot_1_K2Node_ComponentBoundEvent_8_Selected__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UGameMenu_C:BndEvt__GameMenu_EquipToSlot_2_K2Node_ComponentBoundEvent_10_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UGameMenu_C:BndEvt__GameMenu_EquipToSlot_2_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UGameMenu_C:BndEvt__GameMenu_EquipToSlot_3_K2Node_ComponentBoundEvent_11_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UGameMenu_C:BndEvt__GameMenu_EquipToSlot_3_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UGameMenu_C:BndEvt__GameMenu_EquipToSlot_4_K2Node_ComponentBoundEvent_7_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param ItemData UFS_ItemData_C
function UGameMenu_C:BndEvt__GameMenu_FS_InspectItem_K2Node_ComponentBoundEvent_12_ToggleUseItemState__DelegateSignature(ItemData) end

function UGameMenu_C:BndEvt__GameMenu_FS_InspectItem_K2Node_ComponentBoundEvent_13_UnequipClicked__DelegateSignature() end

function UGameMenu_C:BndEvt__GameMenu_FS_InspectItem_K2Node_ComponentBoundEvent_14_EquipClicked__DelegateSignature() end

function UGameMenu_C:BndEvt__GameMenu_FS_InspectItem_K2Node_ComponentBoundEvent_15_UseItem__DelegateSignature() end

function UGameMenu_C:BndEvt__GameMenu_FS_InspectItem_K2Node_ComponentBoundEvent_16_Closed__DelegateSignature() end

function UGameMenu_C:BndEvt__GameMenu_FS_InspectItem_K2Node_ComponentBoundEvent_2_Opened__DelegateSignature() end

function UGameMenu_C:BndEvt__GameMenu_ItemActionModal_K2Node_ComponentBoundEvent_3_Opened__DelegateSignature() end

function UGameMenu_C:BndEvt__GameMenu_ItemActionModal_K2Node_ComponentBoundEvent_6_Closed__DelegateSignature() end

---@param Index int32
function UGameMenu_C:ChangeCategory(Index) end

function UGameMenu_C:Close() end

function UGameMenu_C:CloseEquipItemMenu() end

function UGameMenu_C:CloseItemActionMenu() end

---@param EquipType ItemEquipSlotType::Type
function UGameMenu_C:ConfigureEquipButtonTexts(EquipType) end

function UGameMenu_C:ConfigureEquipMenu() end

function UGameMenu_C:Construct() end

---@param Button UFS_Button_C
function UGameMenu_C:CustomEvent_0(Button) end

function UGameMenu_C:DebugDeleteSelection() end

function UGameMenu_C:DisableRenderingAtCorrectTIme() end

function UGameMenu_C:EquipCancelClicked() end

function UGameMenu_C:EquipModalConfirmPressed() end

---@param EntryPoint int32
function UGameMenu_C:ExecuteUbergraph_GameMenu(EntryPoint) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UGameMenu_C:GameMenu_AutoGenFunc(ObjectA, ObjectB, Result) end

---@param Item UFS_ItemData_C
---@param SlotIndex int32
---@param Text FText
function UGameMenu_C:GetButtonTextFromItemAndSLotIndex(Item, SlotIndex, Text) end

function UGameMenu_C:ItemCancelClicked() end

---@param Item UFS_ItemData_C
---@param Index int32
function UGameMenu_C:ItemSelectionChanged(Item, Index) end

function UGameMenu_C:ManageFocus() end

function UGameMenu_C:NoKnifeEquipMessageConfirm() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UGameMenu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param ItemToAction UFS_ItemData_C
function UGameMenu_C:OpenEquipItemMenu(ItemToAction) end

function UGameMenu_C:OpenInspectModal() end

---@param ItemToAction UFS_ItemData_C
function UGameMenu_C:OpenItemActionMenu(ItemToAction) end

---@param Up boolean
function UGameMenu_C:PageSkip(Up) end

---@param IsDesignTime boolean
function UGameMenu_C:PreConstruct(IsDesignTime) end

function UGameMenu_C:ReenableRendering() end

---@param SelectedIndex int32
---@param ClearPreview boolean
function UGameMenu_C:RefreshEquipSlotPreviews(SelectedIndex, ClearPreview) end

function UGameMenu_C:RefreshEquipSlotsAndStats() end

function UGameMenu_C:RefreshSelectedWeapon() end

function UGameMenu_C:RefreshSetCurrentWeaponText() end

function UGameMenu_C:RevertFocusToInventory() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UGameMenu_C:Tick(MyGeometry, InDeltaTime) end

---@param Item int32
function UGameMenu_C:ToggleItemInSlot(Item) end

function UGameMenu_C:UnequipItem() end

function UGameMenu_C:UnequipSelectedItem() end

function UGameMenu_C:UpdateBadges() end

function UGameMenu_C:UpdateInventory() end

---@param DeltaTime float
function UGameMenu_C:UpdateScrolling(DeltaTime) end

function UGameMenu_C:UpdateSelectedWeapon() end

function UGameMenu_C:UseItemPressed() end

---@param Entry UInventoryEntry_C
function UGameMenu_C:itemEntryClicked(Entry) end

---@param SlotIndex int32
UGameMenu_C['Equip To Slot'] = function(self, SlotIndex) end

---@param Button UObject
---@param InText FText
UGameMenu_C['Set Modal Button Text'] = function(self, Button, InText) end

---@param ItemData UFS_ItemData_C
UGameMenu_C['Set Weapon Data'] = function(self, ItemData) end

---@param SlotIndex int32
UGameMenu_C['Swap To Slot'] = function(self, SlotIndex) end

UGameMenu_C['refresh quick item text'] = function(self) end
