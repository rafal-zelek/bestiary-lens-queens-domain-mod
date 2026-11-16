---@meta

---@class UConsumableHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemCount UCommonTextBlock
---@field ItemFrame UImage
---@field ItemIcon UImage
---@field ItemName UCommonTextBlock
---@field CurrentItem UFS_ItemData_C
---@field ItemOffsets TMap<UFS_ItemData_C, FVector2D>
local UConsumableHUD_C = {}

function UConsumableHUD_C:Construct() end

---@param EntryPoint int32
function UConsumableHUD_C:ExecuteUbergraph_ConsumableHUD(EntryPoint) end

---@param ItemThatChanged UFS_ItemData_C
---@param ItemWasAdded boolean
---@param NewItem boolean
function UConsumableHUD_C:Refresh(ItemThatChanged, ItemWasAdded, NewItem) end

function UConsumableHUD_C:RefreshCount() end

---@param ItemData UFS_ItemData_C
function UConsumableHUD_C:SetSelectedItem(ItemData) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UConsumableHUD_C:Tick(MyGeometry, InDeltaTime) end
