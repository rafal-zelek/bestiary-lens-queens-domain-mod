---@meta

---@class UEquipDisplay_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EquippedDot UImage
---@field HorizontalBox_0 UHorizontalBox
---@field Icon UImage
---@field ItemName UCommonTextBlock
---@field Unequipped UCommonTextBlock
---@field UnequippedBG UImage
---@field UnequippedText UBorder
---@field WeaponLevelBox USizeBox
---@field WeaponLevelStats UWeaponLevelStats_C
---@field ShowCount boolean
---@field PreviewData TSoftObjectPtr<UFS_ItemData_C>
---@field SlotType ItemEquipSlotType::Type
---@field SlotIndex int32
---@field UnequippedBrush UMaterialInterface
---@field ShowLevel boolean
local UEquipDisplay_C = {}

function UEquipDisplay_C:Construct() end

---@param EntryPoint int32
function UEquipDisplay_C:ExecuteUbergraph_EquipDisplay(EntryPoint) end

---@param NoWeapons int32
function UEquipDisplay_C:GetEquippedThrowWepCount(NoWeapons) end

---@param NoWeapons int32
function UEquipDisplay_C:GetEquippedWeaponCount(NoWeapons) end

---@param IsDesignTime boolean
function UEquipDisplay_C:PreConstruct(IsDesignTime) end

function UEquipDisplay_C:RefreshFromSlot() end

---@param PreviewData UFS_ItemData_C
function UEquipDisplay_C:RefreshWithData(PreviewData) end
