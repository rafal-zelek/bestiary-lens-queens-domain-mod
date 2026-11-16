---@meta

---@class UAudioDuckFunctions_C : UBlueprintFunctionLibrary
local UAudioDuckFunctions_C = {}

---@param __WorldContext UObject
function UAudioDuckFunctions_C:DuckMusic(__WorldContext) end

---@param Duck boolean
---@param __WorldContext UObject
function UAudioDuckFunctions_C:SetDuckENV(Duck, __WorldContext) end

---@param __WorldContext UObject
function UAudioDuckFunctions_C:UnDuckMusic(__WorldContext) end
