---@meta

---@class IKeyableObject_C : IInterface
local IKeyableObject_C = {}

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function IKeyableObject_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function IKeyableObject_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end
