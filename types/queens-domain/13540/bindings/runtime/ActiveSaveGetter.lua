---@meta

---@class UActiveSaveGetter_C : UBlueprintFunctionLibrary
local UActiveSaveGetter_C = {}

---@param __WorldContext UObject
---@param Save UFS_SaveSlot_C
function UActiveSaveGetter_C:GetCurrentlyActiveSave(__WorldContext, Save) end

---@param __WorldContext UObject
---@param AsFS_Save_Slot UFS_SaveSlot_C
function UActiveSaveGetter_C:GetRWMSave(__WorldContext, AsFS_Save_Slot) end
