---@meta

---@class UWeaponUpgradeEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CostPanel UWidgetSwitcher
---@field CurrentPower UCommonTextBlock
---@field ExitText UCommonTextBlock
---@field FS_Button UFS_Button_C
---@field ItemDisplay UItemDisplay_C
---@field NeedsLevelText UCommonTextBlock
---@field NewPower UCommonTextBlock
---@field PowerLabel UCommonTextBlock
---@field PowerLabelContainer UHorizontalBox
---@field Price UCommonTextBlock
---@field SoldOutText UCommonTextBlock
---@field Item UFS_ItemData_C
---@field Index int32
---@field Clicked FWeaponUpgradeEntry_CClicked
---@field Selected FWeaponUpgradeEntry_CSelected
local UWeaponUpgradeEntry_C = {}

---@param Button UFS_Button_C
function UWeaponUpgradeEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UWeaponUpgradeEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param InputPin UFS_ItemData_C
function UWeaponUpgradeEntry_C:CanUpgradeItem(InputPin) end

---@param Entry UWeaponUpgradeEntry_C
function UWeaponUpgradeEntry_C:Clicked__DelegateSignature(Entry) end

function UWeaponUpgradeEntry_C:Construct() end

---@param EntryPoint int32
function UWeaponUpgradeEntry_C:ExecuteUbergraph_WeaponUpgradeEntry(EntryPoint) end

---@param IsDesignTime boolean
function UWeaponUpgradeEntry_C:PreConstruct(IsDesignTime) end

function UWeaponUpgradeEntry_C:Refresh() end

---@param Weapon UWeaponUpgradeEntry_C
function UWeaponUpgradeEntry_C:Selected__DelegateSignature(Weapon) end
