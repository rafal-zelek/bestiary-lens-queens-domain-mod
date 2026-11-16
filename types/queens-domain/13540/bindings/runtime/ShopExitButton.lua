---@meta

---@class UShopExitButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Clicked FShopExitButton_CClicked
---@field Selected FShopExitButton_CSelected
local UShopExitButton_C = {}

---@param Button UFS_Button_C
function UShopExitButton_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UShopExitButton_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

function UShopExitButton_C:Clicked__DelegateSignature() end

function UShopExitButton_C:Construct() end

---@param EntryPoint int32
function UShopExitButton_C:ExecuteUbergraph_ShopExitButton(EntryPoint) end

function UShopExitButton_C:Refresh() end

function UShopExitButton_C:Selected__DelegateSignature() end
