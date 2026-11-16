---@meta

---@class UWeaponLevelStats_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Fill UImage
---@field FillBorder UImage
---@field LevelLabel UCommonTextBlock
---@field LevelNum UCommonTextBlock
---@field meterBox USizeBox
---@field RightAlign USpacer
---@field ShadowBorder UImage
---@field upgradedbox USizeBox
---@field WidgetSwitcher_1 UWidgetSwitcher
---@field PlayerConfig UPlayerBalance_C
---@field HideLevelLabel boolean
---@field RightAlignWidgets boolean
local UWeaponLevelStats_C = {}

---@param EntryPoint int32
function UWeaponLevelStats_C:ExecuteUbergraph_WeaponLevelStats(EntryPoint) end

---@param IsDesignTime boolean
function UWeaponLevelStats_C:PreConstruct(IsDesignTime) end

---@param WeaponItem UFS_ItemData_C
function UWeaponLevelStats_C:RefreshStatus(WeaponItem) end
