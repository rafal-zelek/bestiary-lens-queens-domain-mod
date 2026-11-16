---@meta

---@class USimpleHotkeyLibrary : UBlueprintFunctionLibrary
local USimpleHotkeyLibrary = {}

---@param InKeys TArray<FKey>
---@param bPressed boolean
function USimpleHotkeyLibrary:GenerateKeyPressEvent(InKeys, bPressed) end
