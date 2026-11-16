---@meta

---@class UItemGetNotification_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hide UWidgetAnimation
---@field Show UWidgetAnimation
---@field ItemName UCommonTextBlock
---@field Queue TArray<UFS_ItemData_C>
---@field CountQueue TArray<int32>
---@field Visible boolean
---@field VisibleStartTime float
local UItemGetNotification_C = {}

function UItemGetNotification_C:Construct() end

---@param EntryPoint int32
function UItemGetNotification_C:ExecuteUbergraph_ItemGetNotification(EntryPoint) end

---@param ItemDataToShow UFS_ItemData_C
---@param ActualItemAcquired UFS_ItemData_C
---@param Count int32
function UItemGetNotification_C:PickedUpItem(ItemDataToShow, ActualItemAcquired, Count) end

function UItemGetNotification_C:PutAway() end

function UItemGetNotification_C:ShowNextQueueItem() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UItemGetNotification_C:Tick(MyGeometry, InDeltaTime) end
