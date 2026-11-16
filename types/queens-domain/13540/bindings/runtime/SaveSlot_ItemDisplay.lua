---@meta

---@class USaveSlot_ItemDisplay_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Count UCommonTextBlock
---@field CountIcon UCommonTextBlock
---@field Icon UImage
---@field ItemName UCommonTextBlock
---@field PreviewData TSoftObjectPtr<UFS_ItemData_C>
---@field ShowCount boolean
---@field ['Don\'tHideWhenEmpty'] boolean
---@field SaveSlot UFS_SaveSlot_C
---@field SlotIndex int32
---@field SlotType ItemEquipSlotType::Type
local USaveSlot_ItemDisplay_C = {}

---@param EntryPoint int32
function USaveSlot_ItemDisplay_C:ExecuteUbergraph_SaveSlot_ItemDisplay(EntryPoint) end

---@param IsDesignTime boolean
function USaveSlot_ItemDisplay_C:PreConstruct(IsDesignTime) end

---@param Slot UFS_SaveSlot_C
function USaveSlot_ItemDisplay_C:Refresh(Slot) end

function USaveSlot_ItemDisplay_C:UpdateItemCount() end
