---@meta

---@class UWeaponStats_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CellCostStat UHorizontalBox
---@field DaggerSpeed UHorizontalBox
---@field DaggerSpeedText UCommonTextBlock
---@field DamageType UCommonTextBlock
---@field GunCellConsumption UCommonTextBlock
---@field LevelPower UCommonTextBlock
---@field LevelSpeed UCommonTextBlock
---@field Power UCommonTextBlock
---@field PowermeterStat UHorizontalBox
---@field PowerSpeedText UCommonTextBlock
---@field WeaponLevelStats UWeaponLevelStats_C
---@field PlayerConfig UPlayerBalance_C
local UWeaponStats_C = {}

---@param EntryPoint int32
function UWeaponStats_C:ExecuteUbergraph_WeaponStats(EntryPoint) end

---@param Weapon UFS_ItemData_C
---@param Level int32
function UWeaponStats_C:GetWeaponLevel(Weapon, Level) end

---@param WeaponItem UFS_ItemData_C
function UWeaponStats_C:RefreshStatus(WeaponItem) end

---@param Weapon UFS_ItemData_C
function UWeaponStats_C:UpdateConsumption(Weapon) end

---@param Weapon UFS_Item
function UWeaponStats_C:UpdatePowerMeterSpeedText(Weapon) end

---@param Array TArray<float>
---@param Val float
---@param Text FText
UWeaponStats_C['Get  Speed Threshold Text'] = function(self, Array, Val, Text) end
