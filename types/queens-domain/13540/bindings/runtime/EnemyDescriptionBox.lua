---@meta

---@class UEnemyDescriptionBox_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DamageNum UCommonTextBlock
---@field DescSpacer UImage
---@field Drop1 UCommonTextBlock
---@field Drop2 UCommonTextBlock
---@field DropsHeader UCommonTextBlock
---@field HPNum UCommonTextBlock
---@field ImpactResistance UCommonTextBlock
---@field PierceResistance UCommonTextBlock
---@field SlashResistance UCommonTextBlock
---@field TotalKillCount UCommonTextBlock
---@field XPNum UCommonTextBlock
---@field ResistanceNames TMap<EnemyResistance::Type, FText>
local UEnemyDescriptionBox_C = {}

---@param EntryPoint int32
function UEnemyDescriptionBox_C:ExecuteUbergraph_EnemyDescriptionBox(EntryPoint) end

---@param Value float
function UEnemyDescriptionBox_C:FloatFormat(Value) end

---@param Key EnemyResistance::Type
---@param Value FText
function UEnemyDescriptionBox_C:GetResText(Key, Value) end

---@param Data UEnemyData_C
function UEnemyDescriptionBox_C:Refresh(Data) end

---@param EnemyData UEnemyData_C
function UEnemyDescriptionBox_C:SetupDropDisplay(EnemyData) end
