---@meta

---@class UPlayerStatsAndUtils_C : UBlueprintFunctionLibrary
local UPlayerStatsAndUtils_C = {}

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:ActivateBossHPBar(Enemy, Group, __WorldContext) end

---@param __WorldContext UObject
---@param SpeedMult float
function UPlayerStatsAndUtils_C:CalculateBaseAttackSpeed(__WorldContext, SpeedMult) end

---@param PowerMeter_Spent float
---@param PowerMeterSecondsSpent float
---@param AttackForce float
---@param EnergySpent float
---@param WAPSpent float
---@param OverrideForce boolean
---@param PowerMeterMin float
---@param __WorldContext UObject
---@param StaggerBaseDamage float
function UPlayerStatsAndUtils_C:CalculateBaseStaggerDamageForAttackCost(PowerMeter_Spent, PowerMeterSecondsSpent, AttackForce, EnergySpent, WAPSpent, OverrideForce, PowerMeterMin, __WorldContext, StaggerBaseDamage) end

---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:CalculateHealingEffectMult(__WorldContext) end

---@param Power_Meter_Seconds_Spent float
---@param Power_Cells_Spent float
---@param Dagger_Seconds_Spent float
---@param Weapon_Ability_Points_Spent float
---@param AOE boolean
---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:CalculateResourceGenForAttackCost(Power_Meter_Seconds_Spent, Power_Cells_Spent, Dagger_Seconds_Spent, Weapon_Ability_Points_Spent, AOE, __WorldContext) end

---@param Target AActor
---@param LOSWeightMul float
---@param FacingWeight float
---@param ViewPoint FVector
---@param __WorldContext UObject
---@param Weight float
function UPlayerStatsAndUtils_C:CalculateTargetWeight(Target, LOSWeightMul, FacingWeight, ViewPoint, __WorldContext, Weight) end

---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:ConditionalGrantStatusGuide(__WorldContext) end

---@param Luck float
---@param __WorldContext UObject
---@param DropChanceBonus float
function UPlayerStatsAndUtils_C:ConvertLuckToDropChanceBonus(Luck, __WorldContext, DropChanceBonus) end

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:DeactivateBossHPBar(Enemy, Group, __WorldContext) end

---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:DisableAllPlayerInput(__WorldContext) end

---@param Reset boolean
---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:EnableAllPlayerInput(Reset, __WorldContext) end

---@param Item UFS_ItemData_C
---@param Slot_Index int32
---@param SkipEquipNotif boolean
---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:EquipItem(Item, Slot_Index, SkipEquipNotif, __WorldContext) end

---@param __WorldContext UObject
---@param Resistance float
function UPlayerStatsAndUtils_C:GetBaseStatusResistance(__WorldContext, Resistance) end

---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetBindingBaseResistance(__WorldContext, res) end

---@param Update boolean
---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetBindingResistance(Update, __WorldContext, res) end

---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetDiseaseBaseResistance(__WorldContext, res) end

---@param Update boolean
---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetDiseaseResistance(Update, __WorldContext, res) end

---@param WorldContextObject UObject
---@param __WorldContext UObject
---@param UsesRemaining int32
function UPlayerStatsAndUtils_C:GetGrimoireUses(WorldContextObject, __WorldContext, UsesRemaining) end

---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetHeavyBaseResistance(__WorldContext, res) end

---@param Update boolean
---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetHeavyResistance(Update, __WorldContext, res) end

---@param __WorldContext UObject
---@param AsLD45_GM ABase_LD45_GM_C
function UPlayerStatsAndUtils_C:GetLD45_GM(__WorldContext, AsLD45_GM) end

---@param Update boolean
---@param __WorldContext UObject
---@param LightRadius float
function UPlayerStatsAndUtils_C:GetLightRadius(Update, __WorldContext, LightRadius) end

---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetMagicPoisonBaseResistance(__WorldContext, res) end

---@param Update boolean
---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetMagicPoisonResistance(Update, __WorldContext, res) end

---@param Update boolean
---@param __WorldContext UObject
---@param Mult float
function UPlayerStatsAndUtils_C:GetMagicRateMultiplier(Update, __WorldContext, Mult) end

---@param __WorldContext UObject
---@param Max float
function UPlayerStatsAndUtils_C:GetMaxEnergy(__WorldContext, Max) end

---@param Update boolean
---@param __WorldContext UObject
---@param SpeedMult float
function UPlayerStatsAndUtils_C:GetMoveSpeedMult(Update, __WorldContext, SpeedMult) end

---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetPoisonBaseResistance(__WorldContext, res) end

---@param UpdateCache boolean
---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetPoisonResistance(UpdateCache, __WorldContext, res) end

---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetStickyBaseResistace(__WorldContext, res) end

---@param Update boolean
---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetStickyResistance(Update, __WorldContext, res) end

---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetWeakenBaseResistance(__WorldContext, res) end

---@param UpdateCache boolean
---@param __WorldContext UObject
---@param res float
function UPlayerStatsAndUtils_C:GetWeakenResistance(UpdateCache, __WorldContext, res) end

---@param WeaponItem UFS_ItemData_C
---@param __WorldContext UObject
---@param Mult float
function UPlayerStatsAndUtils_C:GetWeaponLevelAttackPowerMult(WeaponItem, __WorldContext, Mult) end

---@param Weapon_Item UFS_ItemData_C
---@param __WorldContext UObject
---@param BasePower float
---@param IncreaseFromLevel float
---@param TotalPower float
function UPlayerStatsAndUtils_C:GetWeaponPrimaryAttackPower(Weapon_Item, __WorldContext, BasePower, IncreaseFromLevel, TotalPower) end

---@param Weapon_Item UFS_ItemData_C
---@param __WorldContext UObject
---@param BasePower float
---@param IncreaseFromLevel float
---@param TotalPower float
function UPlayerStatsAndUtils_C:GetWeaponSecondaryAttackPower(Weapon_Item, __WorldContext, BasePower, IncreaseFromLevel, TotalPower) end

---@param Weapon UFS_Item
---@param __WorldContext UObject
---@param Value int32
function UPlayerStatsAndUtils_C:GetWeaponUpgradeCost(Weapon, __WorldContext, Value) end

---@param Weapon UFS_Item
---@param __WorldContext UObject
---@param Return UFS_Item
function UPlayerStatsAndUtils_C:GetWeaponUpgradeItem(Weapon, __WorldContext, Return) end

---@param Hit_Multiplier float
---@param Weapon UFS_ItemData_C
---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:GivePlayerOnHitResources(Hit_Multiplier, Weapon, __WorldContext) end

---@param __WorldContext UObject
---@param Unlocked boolean
function UPlayerStatsAndUtils_C:IsEnergyUnlocked(__WorldContext, Unlocked) end

---@param Item UFS_ItemData_C
---@param __WorldContext UObject
---@param Cooling_Down boolean
function UPlayerStatsAndUtils_C:IsItemOnCooldown(Item, __WorldContext, Cooling_Down) end

---@param Weapon UFS_ItemData_C
---@param __WorldContext UObject
---@param FullyLevelled boolean
function UPlayerStatsAndUtils_C:IsWeaponFullyLevelled(Weapon, __WorldContext, FullyLevelled) end

---@param Weapon UFS_ItemData_C
---@param __WorldContext UObject
---@param Upgraded boolean
function UPlayerStatsAndUtils_C:IsWeaponUpgraded(Weapon, __WorldContext, Upgraded) end

---@param C1 TMap<FGameplayTag, float>
---@param C2 TMap<FGameplayTag, float>
---@param __WorldContext UObject
---@param Combined TMap<FGameplayTag, float>
function UPlayerStatsAndUtils_C:QuickAppendDataTags(C1, C2, __WorldContext, Combined) end

---@param C1 FGameplayTagContainer
---@param C2 FGameplayTagContainer
---@param __WorldContext UObject
---@param Combined FGameplayTagContainer
function UPlayerStatsAndUtils_C:QuickAppendGameplayTagContainers(C1, C2, __WorldContext, Combined) end

---@param __WorldContext UObject
---@param Target AActor
function UPlayerStatsAndUtils_C:SelectHomingTarget(__WorldContext, Target) end

---@param Item UFS_ItemData_C
---@param Time float
---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:StartItemCooldown(Item, Time, __WorldContext) end

---@param Item UFS_ItemData_C
---@param Slot_Index int32
---@param Automatic boolean
---@param __WorldContext UObject
function UPlayerStatsAndUtils_C:UnequipItem(Item, Slot_Index, Automatic, __WorldContext) end

---@param __WorldContext UObject
---@param Base_Power float
UPlayerStatsAndUtils_C['Calculate Base Attack Power'] = function(self, __WorldContext, Base_Power) end

---@param BuffCount int32
---@param TuningValue float
---@param __WorldContext UObject
---@param SpeedMult float
UPlayerStatsAndUtils_C['Calculate Base Speed Stat'] = function(self, BuffCount, TuningValue, __WorldContext, SpeedMult) end

---@param Update boolean
---@param __WorldContext UObject
---@param Mult float
UPlayerStatsAndUtils_C['Calculate Equipment Attack Power Multiplier'] = function(self, Update, __WorldContext, Mult) end

---@param Update boolean
---@param __WorldContext UObject
---@param Mult float
UPlayerStatsAndUtils_C['Calculate Equipment Defense Multiplier'] = function(self, Update, __WorldContext, Mult) end

---@param IgnoreTemporaryEffects boolean
---@param __WorldContext UObject
---@param AttackPower float
UPlayerStatsAndUtils_C['Calculate Full Attack Power'] = function(self, IgnoreTemporaryEffects, __WorldContext, AttackPower) end

---@param __WorldContext UObject
---@param Speed_Mult float
UPlayerStatsAndUtils_C['Calculate Full Attack Speed'] = function(self, __WorldContext, Speed_Mult) end

---@param __WorldContext UObject
---@param Mult float
UPlayerStatsAndUtils_C['Calculate Full Defense Multiplier'] = function(self, __WorldContext, Mult) end

---@param Item UFS_ItemData_C
---@param SkipEquipNotif boolean
---@param Offhand boolean
---@param __WorldContext UObject
UPlayerStatsAndUtils_C['DoEvo Weapon Swap'] = function(self, Item, SkipEquipNotif, Offhand, __WorldContext) end

---@param Stat FName
---@param __WorldContext UObject
UPlayerStatsAndUtils_C['Get in Hand Item Stat'] = function(self, Stat, __WorldContext) end

---@param Weapon UFS_Item
---@param __WorldContext UObject
---@param Owned boolean
UPlayerStatsAndUtils_C['Is Weapon Upgrade Data Installed'] = function(self, Weapon, __WorldContext, Owned) end
