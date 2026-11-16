---@meta

---@class UUIUtilFuncs_C : UBlueprintFunctionLibrary
local UUIUtilFuncs_C = {}

---@param Target UWidget
---@param __WorldContext UObject
function UUIUtilFuncs_C:ResetCursorDefaultStateOnMenuWidget(Target, __WorldContext) end

---@param DeltaTime float
---@param ScrollBox UScrollBox
---@param ScrollSpeed float
---@param ArrowKeysScrollToo boolean
---@param __WorldContext UObject
function UUIUtilFuncs_C:UpdateScrolling(DeltaTime, ScrollBox, ScrollSpeed, ArrowKeysScrollToo, __WorldContext) end

---@param Widget UWidget
---@param MuteSelectSound boolean
---@param __WorldContext UObject
UUIUtilFuncs_C['FS Set Focus'] = function(self, Widget, MuteSelectSound, __WorldContext) end
