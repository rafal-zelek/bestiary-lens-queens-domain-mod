---@meta

---@class UShopMenu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Saved UWidgetAnimation
---@field ['3DWindow'] UOverlay
---@field CoinDisplay UItemDisplay_C
---@field DescriptionWindow UOverlay
---@field FS_3DWidget UFS_3DWidget_C
---@field FS_DescriptionText UFS_DescriptionText_C
---@field FS_Modal UFS_Modal_C
---@field Image_585 UImage
---@field ItemInspect_DescriptionScrollbox UScrollBox
---@field ItemInspect_StatsSpacer UImage
---@field ItemInspect_WeaponStats UWeaponStats_C
---@field ItemName UCommonTextBlock
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field Screen UCanvasPanel
---@field ScrollBox_150 UScrollBox
---@field ShopEntry UShopEntry_C
---@field ShopEntry_1 UShopEntry_C
---@field ShopEntry_158 UShopEntry_C
---@field ShopEntry_328 UShopEntry_C
---@field ShopEntry_447 UShopEntry_C
---@field ShopEntry_557 UShopEntry_C
---@field ShopEntry_658 UShopEntry_C
---@field ShopEntry_832 UShopEntry_C
---@field ShopEntry_986 UShopEntry_C
---@field ShopEntries TArray<UShopEntry_C>
---@field ModalOpen boolean
---@field ModalOpenTime float
---@field ModalDialogueCancel FShopMenu_CModalDialogueCancel
---@field ModalDialogueConfirm FShopMenu_CModalDialogueConfirm
---@field Shop UShopConfigData
---@field LastSelectedInventoryIndex int32
---@field CurrentPurchaseEntry UShopEntry_C
---@field CurrentItem UFS_ItemData_C
---@field Closed FShopMenu_CClosed
---@field lastselectedentry UShopEntry_C
---@field LastSelectedWasEntry boolean
---@field SellMode boolean
---@field ExitButton UShopExitButton_C
---@field MerchantNPC ANPC_Base_C
local UShopMenu_C = {}

function UShopMenu_C:BndEvt__ShopMenu_FS_Modal_K2Node_ComponentBoundEvent_1_Opened__DelegateSignature() end

function UShopMenu_C:BndEvt__ShopMenu_FS_Modal_K2Node_ComponentBoundEvent_3_Closed__DelegateSignature() end

function UShopMenu_C:CancelModal() end

function UShopMenu_C:CleanUpEntries() end

---@param OutOfStuffToSell boolean
function UShopMenu_C:Close(OutOfStuffToSell) end

---@param OutOfStuffToSell boolean
function UShopMenu_C:Closed__DelegateSignature(OutOfStuffToSell) end

function UShopMenu_C:Construct() end

---@param ItemData UFS_ItemData_C
function UShopMenu_C:DisplayItem(ItemData) end

function UShopMenu_C:DoFocus() end

---@param EntryPoint int32
function UShopMenu_C:ExecuteUbergraph_ShopMenu(EntryPoint) end

function UShopMenu_C:ExitButtonClicked() end

function UShopMenu_C:ExitButtonSelected() end

function UShopMenu_C:FocusFirst() end

---@param Items TArray<UFS_ItemData_C>
function UShopMenu_C:GetSellableItems(Items) end

---@param ShopEntry FFS_ShopConfigData
---@param Index int32
function UShopMenu_C:ItemSelectionChanged(ShopEntry, Index) end

function UShopMenu_C:ModalDialogueCancel__DelegateSignature() end

function UShopMenu_C:ModalDialogueConfirm__DelegateSignature() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UShopMenu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param Question FText
---@param Fail boolean
function UShopMenu_C:OpenModalDialogue(Question, Fail) end

---@param Up boolean
function UShopMenu_C:PageSkip(Up) end

function UShopMenu_C:SelectSafeIndex() end

---@param ShopEntry UShopEntry_C
function UShopMenu_C:SelectedEntry(ShopEntry) end

function UShopMenu_C:SellItem() end

---@param Entry UShopEntry_C
function UShopMenu_C:ShopEntryClicked(Entry) end

function UShopMenu_C:ShopEntryPurchased() end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UShopMenu_C:ShopMenu_AutoGenFunc(ObjectA, ObjectB, Result) end

function UShopMenu_C:ShopPurchaseCancelled() end

function UShopMenu_C:SortAndParentShop() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UShopMenu_C:Tick(MyGeometry, InDeltaTime) end

function UShopMenu_C:TransactionDialogueConfirm() end

function UShopMenu_C:UpdateBalance() end

function UShopMenu_C:WrapUpInit() end

UShopMenu_C['Refresh List'] = function(self) end

UShopMenu_C['Refresh Post Transaction'] = function(self) end
