---@meta

---@class UWorldEventReceiver_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Enable General World Event'] boolean
---@field ['Enable Inventory Event'] boolean
---@field OnWorldStateChanged FWorldEventReceiver_COnWorldStateChanged
---@field OnInventoryChanged FWorldEventReceiver_COnInventoryChanged
---@field OnWorldRefresh FWorldEventReceiver_COnWorldRefresh
---@field ['Enable Quest State Event'] boolean
---@field ['Quest State NSD'] FName
---@field OnQuestStateUpdated FWorldEventReceiver_COnQuestStateUpdated
---@field UpdateOnAltQuestStatNSD FName
local UWorldEventReceiver_C = {}

---@param EntryPoint int32
function UWorldEventReceiver_C:ExecuteUbergraph_WorldEventReceiver(EntryPoint) end

function UWorldEventReceiver_C:OnInventoryChanged__DelegateSignature() end

---@param NewValue int32
function UWorldEventReceiver_C:OnQuestStateUpdated__DelegateSignature(NewValue) end

function UWorldEventReceiver_C:OnWorldRefresh__DelegateSignature() end

function UWorldEventReceiver_C:OnWorldStateChanged__DelegateSignature() end

---@param NSD FName
function UWorldEventReceiver_C:QuestStateChanged(NSD) end

function UWorldEventReceiver_C:ReceiveBeginPlay() end

function UWorldEventReceiver_C:WorldStateChanged() end

---@param ItemThatChanged UFS_ItemData_C
---@param ItemWasAdded boolean
---@param NewItem boolean
UWorldEventReceiver_C['Inventory Was Changed'] = function(self, ItemThatChanged, ItemWasAdded, NewItem) end

UWorldEventReceiver_C['World Refreshed'] = function(self) end
