---@meta

---@class UPlayerAttributes_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AttackPower UCommonTextBlock
---@field AttackSpeed UCommonTextBlock
---@field BindingResistance UCommonTextBlock
---@field DamageReduction UCommonTextBlock
---@field DiseaseResistance UCommonTextBlock
---@field HeavyResistance UCommonTextBlock
---@field HPNum UCommonTextBlock
---@field LevelNum UCommonTextBlock
---@field Luck UCommonTextBlock
---@field MagicPoisonResistance UCommonTextBlock
---@field MagicRate UCommonTextBlock
---@field PoisonResistance UCommonTextBlock
---@field StatusVal UCommonTextBlock
---@field StickyResistance_1 UCommonTextBlock
---@field TotalXP UCommonTextBlock
---@field WeakenResistance UCommonTextBlock
---@field XPNum UCommonTextBlock
---@field ['Player Config'] UPlayerBalance_C
---@field PlayerRef AFS_PlayerChar_C
---@field AllStatusTexts TArray<FText>
---@field AllStatusColors TArray<FLinearColor>
---@field CurrentStatusStates TArray<boolean>
---@field CurrentStatusCount int32
---@field CurrentStatusIndexes TArray<int32>
local UPlayerAttributes_C = {}

function UPlayerAttributes_C:Construct() end

---@param EntryPoint int32
function UPlayerAttributes_C:ExecuteUbergraph_PlayerAttributes(EntryPoint) end

function UPlayerAttributes_C:RefreshStatus() end

function UPlayerAttributes_C:RefreshStatusEffect() end

---@param Text UTextBlock
---@param Num float
function UPlayerAttributes_C:SetResistanceText(Text, Num) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UPlayerAttributes_C:Tick(MyGeometry, InDeltaTime) end

function UPlayerAttributes_C:UpdateAttackPower() end

function UPlayerAttributes_C:UpdateAttackSpeed() end

function UPlayerAttributes_C:UpdateCurrentStatusList() end

function UPlayerAttributes_C:UpdateHP() end

function UPlayerAttributes_C:UpdateLuck() end

function UPlayerAttributes_C:UpdateMagicRate() end

function UPlayerAttributes_C:UpdateResists() end

UPlayerAttributes_C['Update XP And Level'] = function(self) end
