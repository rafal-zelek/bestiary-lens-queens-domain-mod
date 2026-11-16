---@meta

---@class UPlayerMathFunctions_C : UBlueprintFunctionLibrary
local UPlayerMathFunctions_C = {}

---@param TotalXP int32
---@param Array TArray<int32>
---@param __WorldContext UObject
---@param Level int32
---@param CurrentLevelXPRequirement int32
---@param CurrentLevelXPProgress int32
function UPlayerMathFunctions_C:CalculateLevelWithTable(TotalXP, Array, __WorldContext, Level, CurrentLevelXPRequirement, CurrentLevelXPProgress) end

---@param TotalXP int32
---@param __WorldContext UObject
---@param Level int32
---@param CurrentLevelXPRequirement int32
---@param CurrentLevelXPProgress int32
function UPlayerMathFunctions_C:CalculateLevelWithUnlimitedTable(TotalXP, __WorldContext, Level, CurrentLevelXPRequirement, CurrentLevelXPProgress) end

---@param TotalXP int32
---@param AmtPerLevel int32
---@param MaxLevel int32
---@param __WorldContext UObject
---@param Level int32
---@param CurrentLevelXPRequirement int32
---@param CurrentLevelXPProgress int32
function UPlayerMathFunctions_C:CalculateLevelWithValues(TotalXP, AmtPerLevel, MaxLevel, __WorldContext, Level, CurrentLevelXPRequirement, CurrentLevelXPProgress) end

---@param Level int32
---@param HPRelics int32
---@param __WorldContext UObject
---@param HP float
function UPlayerMathFunctions_C:CalculateMaxHP(Level, HPRelics, __WorldContext, HP) end

---@param TotalXP int32
---@param __WorldContext UObject
---@param Level int32
---@param CurrentLevelXPRequirement int32
---@param CurrentLevelXPProgress int32
function UPlayerMathFunctions_C:CalculatePlayerLevel(TotalXP, __WorldContext, Level, CurrentLevelXPRequirement, CurrentLevelXPProgress) end

---@param SaveSlot UFS_SaveSlot_C
---@param __WorldContext UObject
---@param Count int32
function UPlayerMathFunctions_C:GetFSChargeCount(SaveSlot, __WorldContext, Count) end

---@param Index int32
---@param Item UFS_ItemData_C
---@param __WorldContext UObject
---@param ID int32
function UPlayerMathFunctions_C:GetSlotIDFromIndexAndItem(Index, Item, __WorldContext, ID) end

---@param Index ItemEquipSlotType::Type
---@param InputPin int32
---@param __WorldContext UObject
function UPlayerMathFunctions_C:GetSlotIDFromSlotTypeAndIndex(Index, InputPin, __WorldContext) end

---@param ID int32
---@param __WorldContext UObject
---@param Index int32
---@param Type ItemEquipSlotType::Type
function UPlayerMathFunctions_C:GetSlotTypeAndIndexFromID(ID, __WorldContext, Index, Type) end

---@param Level int32
---@param Table TArray<int32>
---@param __WorldContext UObject
---@param XP int32
function UPlayerMathFunctions_C:GetXpUpToLevelWithTable(Level, Table, __WorldContext, XP) end
