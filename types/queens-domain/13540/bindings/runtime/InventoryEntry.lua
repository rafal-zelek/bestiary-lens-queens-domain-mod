---@meta

---@class UInventoryEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field ItemDisplay UItemDisplay_C
---@field OwningGameMenu UGameMenu_C
---@field Item UFS_ItemData_C
---@field Index int32
---@field Clicked FInventoryEntry_CClicked
local UInventoryEntry_C = {}

---@param Button UFS_Button_C
function UInventoryEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UInventoryEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Entry UInventoryEntry_C
function UInventoryEntry_C:Clicked__DelegateSignature(Entry) end

function UInventoryEntry_C:Construct() end

---@param EntryPoint int32
function UInventoryEntry_C:ExecuteUbergraph_InventoryEntry(EntryPoint) end

---@param IsDesignTime boolean
function UInventoryEntry_C:PreConstruct(IsDesignTime) end
