---@meta

---@class UBestiaryStatusGetter_C : UBlueprintFunctionLibrary
local UBestiaryStatusGetter_C = {}

---@param Demo_Datas TArray<UEnemyData_C>
---@param __WorldContext UObject
---@param Completion float
UBestiaryStatusGetter_C['Get Bestiary Completion% Demo'] = function(self, Demo_Datas, __WorldContext, Completion) end

---@param __WorldContext UObject
---@param Completion float
---@param CurrentCount int32
---@param BestiaryTotal int32
UBestiaryStatusGetter_C['Get Bestiary Completion%'] = function(self, __WorldContext, Completion, CurrentCount, BestiaryTotal) end
