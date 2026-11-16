---@meta

---@class USaveFunctions_C : UBlueprintFunctionLibrary
local USaveFunctions_C = {}

---@param Item TSoftObjectPtr<UFS_ItemData_C>
---@param Count int32
---@param __WorldContext UObject
function USaveFunctions_C:AddItemToInventory(Item, Count, __WorldContext) end

---@param __WorldContext UObject
function USaveFunctions_C:CanPossiblyDisableGamepad(__WorldContext) end

---@param CancelSaveLoop boolean
---@param ForceImmediate boolean
---@param __WorldContext UObject
function USaveFunctions_C:ClearSuspendSavesImmediately(CancelSaveLoop, ForceImmediate, __WorldContext) end

---@param Slot int32
---@param __WorldContext UObject
function USaveFunctions_C:DeleteSaveSlot(Slot, __WorldContext) end

---@param __WorldContext UObject
---@param ActiveSave UFS_SaveSlot_C
function USaveFunctions_C:GetActiveSave(__WorldContext, ActiveSave) end

---@param __WorldContext UObject
---@param ActiveSave UFS_SystemSave_C
function USaveFunctions_C:GetActiveSystemSave(__WorldContext, ActiveSave) end

---@param __WorldContext UObject
---@param Version int32
function USaveFunctions_C:GetCurrentSaveVersion(__WorldContext, Version) end

---@param Name FName
---@param __WorldContext UObject
---@param Value int32
---@param WasSet boolean
function USaveFunctions_C:GetNamedSaveData(Name, __WorldContext, Value, WasSet) end

---@param Index int32
---@param __WorldContext UObject
---@param SlotName FString
function USaveFunctions_C:GetSystemSaveName(Index, __WorldContext, SlotName) end

---@param Guide UReadableText_DataAsset_C
---@param __WorldContext UObject
function USaveFunctions_C:GrantGuideToPlayer(Guide, __WorldContext) end

---@param __WorldContext UObject
---@param Enabled boolean
function USaveFunctions_C:IsGamepadEnabled(__WorldContext, Enabled) end

---@param __WorldContext UObject
---@param Available boolean
function USaveFunctions_C:IsThinFontAvailable(__WorldContext, Available) end

---@param __WorldContext UObject
function USaveFunctions_C:QueueSaveSystemSaveToDisk(__WorldContext) end

---@param EnemyData UQD_EnemyData_base
---@param SetTo1 boolean
---@param OnlyIf0 boolean
---@param __WorldContext UObject
function USaveFunctions_C:RegisterEnemyKill(EnemyData, SetTo1, OnlyIf0, __WorldContext) end

---@param EnemyData UQD_EnemyData_base
---@param __WorldContext UObject
function USaveFunctions_C:RegisterEnemyWithoutKill(EnemyData, __WorldContext) end

---@param __WorldContext UObject
function USaveFunctions_C:SaveGameToDisk(__WorldContext) end

---@param Name FName
---@param Data int32
---@param RefreshQuestStates boolean
---@param __WorldContext UObject
function USaveFunctions_C:SaveNamedData(Name, Data, RefreshQuestStates, __WorldContext) end

---@param Name FName
---@param Data int32
---@param Mode NamedSaveDataMode::Type
---@param RefreshQuestState boolean
---@param __WorldContext UObject
function USaveFunctions_C:SaveNamedData_Advanced(Name, Data, Mode, RefreshQuestState, __WorldContext) end

---@param __WorldContext UObject
function USaveFunctions_C:SaveSystemSaveToDisk(__WorldContext) end

---@param Item TSoftObjectPtr<UFS_ItemData_C>
---@param Count int32
---@param __WorldContext UObject
---@param Success boolean
function USaveFunctions_C:TryConsumingItemFromInventory(Item, Count, __WorldContext, Success) end

---@param Item TSoftObjectPtr<UFS_ItemData_C>
---@param __WorldContext UObject
USaveFunctions_C['FULLY Delete Item From Inventory'] = function(self, Item, __WorldContext) end

---@param Index int32
---@param Backup boolean
---@param DeathLoad boolean
---@param Not_Suspend boolean
---@param __WorldContext UObject
---@param WorldSave UFS_SaveSlot_C
USaveFunctions_C['Load Save From Disk Synchronous'] = function(self, Index, Backup, DeathLoad, Not_Suspend, __WorldContext, WorldSave) end

---@param Index int32
---@param __WorldContext UObject
---@param System_Save UFS_SystemSave_C
USaveFunctions_C['Load System Save from Disk Synchrounous'] = function(self, Index, __WorldContext, System_Save) end

---@param Save UFS_SaveSlot_C
---@param __WorldContext UObject
USaveFunctions_C['Update and Validate Save'] = function(self, Save, __WorldContext) end
