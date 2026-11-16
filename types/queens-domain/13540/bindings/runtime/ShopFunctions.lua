---@meta

---@class UShopFunctions_C : UBlueprintFunctionLibrary
local UShopFunctions_C = {}

---@param EntryKey FName
---@param EntryData FFS_ShopConfigData
---@param __WorldContext UObject
---@param Stock int32
function UShopFunctions_C:GetShopEntryCurrentMaxStock(EntryKey, EntryData, __WorldContext, Stock) end

---@param EntryKey FName
---@param EntryData FFS_ShopConfigData
---@param __WorldContext UObject
---@param Stock int32
function UShopFunctions_C:GetShopEntryMaxStockEver(EntryKey, EntryData, __WorldContext, Stock) end

---@param EntryKey FName
---@param EntryData FFS_ShopConfigData
---@param __WorldContext UObject
---@param Stock int32
---@param OutOfStock boolean
---@param CurrentMaxStock int32
function UShopFunctions_C:GetShopEntryRemainingStock(EntryKey, EntryData, __WorldContext, Stock, OutOfStock, CurrentMaxStock) end

---@param Target UShopConfigData
---@param __WorldContext UObject
---@param HasStock boolean
function UShopFunctions_C:IsAnythingAvailableInShop(Target, __WorldContext, HasStock) end

---@param __WorldContext UObject
---@param Output boolean
function UShopFunctions_C:IsAnythingAvailableToSell(__WorldContext, Output) end

---@param Entry FFS_ShopConfigData
---@param __WorldContext UObject
---@param Unlocked boolean
function UShopFunctions_C:IsShopEntryUnlocked(Entry, __WorldContext, Unlocked) end

---@param Config FFS_ShopConfigData
---@param __WorldContext UObject
---@param Item UFS_ItemData_C
UShopFunctions_C['Get Display Item For Shop Config'] = function(self, Config, __WorldContext, Item) end
