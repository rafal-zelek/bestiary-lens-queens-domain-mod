---@meta

---@class IGameInstanceUtils_C : IInterface
local IGameInstanceUtils_C = {}

function IGameInstanceUtils_C:BlockSuspendSaves() end

---@param CancelSaveLoop boolean
---@param ForceImmediate boolean
function IGameInstanceUtils_C:GI_DeleteSuspendSaves(CancelSaveLoop, ForceImmediate) end

---@param Slot UFS_SaveSlot_C
function IGameInstanceUtils_C:GI_GetActiveSave(Slot) end

---@param Save UFS_SystemSave_C
function IGameInstanceUtils_C:GI_GetActiveSystemSave(Save) end

---@param Enabled boolean
---@param Unlock1Acquired boolean
---@param Unlock2Acquired boolean
---@param Unlock3Acquired boolean
---@param Unlock4Acquired boolean
function IGameInstanceUtils_C:GI_IsRuneVisionEnabled(Enabled, Unlock1Acquired, Unlock2Acquired, Unlock3Acquired, Unlock4Acquired) end

---@param AreaName FText
---@param LocationName FText
function IGameInstanceUtils_C:GI_NotifyAreaChanged(AreaName, LocationName) end

---@param Item_That_Changed UFS_Item
---@param Added boolean
---@param New_Item boolean
function IGameInstanceUtils_C:GI_NotifyInventoryChanged(Item_That_Changed, Added, New_Item) end

function IGameInstanceUtils_C:GI_NotifyItemPutAway() end

function IGameInstanceUtils_C:GI_NotifyWorldStateChanged() end

function IGameInstanceUtils_C:GI_QueueSystemSave() end

function IGameInstanceUtils_C:GI_SaveGameToDisk() end

function IGameInstanceUtils_C:GI_SaveSystemSaveToDisk() end

---@param State boolean
---@param Unlock1 boolean
---@param Unlock2 boolean
---@param Unlock3 boolean
---@param Unlock4 boolean
function IGameInstanceUtils_C:GI_SetRuneVisionState(State, Unlock1, Unlock2, Unlock3, Unlock4) end

function IGameInstanceUtils_C:GI_StartSuspendSaveLoop() end

function IGameInstanceUtils_C:GI_UpdateFontOverride() end

---@param NSD FName
function IGameInstanceUtils_C:GI_UpdateQuestState(NSD) end

function IGameInstanceUtils_C:GI_UpdateTextureStreaming() end

---@param CancelSaveLoop boolean
function IGameInstanceUtils_C:GI_WriteSuspendSaveImmediately(CancelSaveLoop) end

function IGameInstanceUtils_C:UnBlockSuspendSaves() end
