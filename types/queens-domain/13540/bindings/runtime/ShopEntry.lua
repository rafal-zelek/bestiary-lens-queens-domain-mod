---@meta

---@class UShopEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Image_223 UImage
---@field ItemDisplay UItemDisplay_C
---@field OwnedContainer UHorizontalBox
---@field OwnedCount UCommonTextBlock
---@field OwnedLabel UCommonTextBlock
---@field Price UCommonTextBlock
---@field PriceType UWidgetSwitcher
---@field SoldOutText UCommonTextBlock
---@field StockContainer UHorizontalBox
---@field StockCount UCommonTextBlock
---@field StockLabel UCommonTextBlock
---@field OwningShopMenu UShopMenu_C
---@field DisplayItem UFS_ItemData_C
---@field Index int32
---@field Clicked FShopEntry_CClicked
---@field ShopEntryname FName
---@field ShopEntryConfig FFS_ShopConfigData
---@field CurrentStock int32
---@field ['Out Of Stock'] boolean
---@field Selected FShopEntry_CSelected
---@field ['Sell Mode'] boolean
---@field SoldOutLabel FText
---@field SoldOutLabel_SellMode FText
local UShopEntry_C = {}

---@param Button UFS_Button_C
function UShopEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UShopEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

function UShopEntry_C:CanTransact() end

---@param Entry UShopEntry_C
function UShopEntry_C:Clicked__DelegateSignature(Entry) end

function UShopEntry_C:Construct() end

---@param EntryPoint int32
function UShopEntry_C:ExecuteUbergraph_ShopEntry(EntryPoint) end

function UShopEntry_C:Refresh() end

---@param ShopEntry UShopEntry_C
function UShopEntry_C:Selected__DelegateSignature(ShopEntry) end

function UShopEntry_C:ShowOwned() end

UShopEntry_C['Calc Stock'] = function(self) end
