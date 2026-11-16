---@meta

---@class UTimeDilationManagement_C : UBlueprintFunctionLibrary
local UTimeDilationManagement_C = {}

---@param __WorldContext UObject
---@param Paused boolean
function UTimeDilationManagement_C:IsTimeDilationPaused(__WorldContext, Paused) end

---@param Pause boolean
---@param __WorldContext UObject
function UTimeDilationManagement_C:SetPausedEnemyTimeDilation(Pause, __WorldContext) end

---@param Event FBind To Enemy Pause TDLEvent
---@param __WorldContext UObject
UTimeDilationManagement_C['Bind To Enemy Pause TDL'] = function(self, Event, __WorldContext) end

---@param __WorldContext UObject
UTimeDilationManagement_C['Cancel Hit Stop'] = function(self, __WorldContext) end

---@param __WorldContext UObject
---@param Manager TScriptInterface<ITimeDilationManager_C>
UTimeDilationManagement_C['Get Time Dilation Manager'] = function(self, __WorldContext, Manager) end

---@param Pause boolean
---@param __WorldContext UObject
UTimeDilationManagement_C['Set Pause Time Dilation'] = function(self, Pause, __WorldContext) end

---@param Modifier float
---@param Type TimeDilationModifierType::Type
---@param __WorldContext UObject
UTimeDilationManagement_C['Set Time Dilation Modifier'] = function(self, Modifier, Type, __WorldContext) end

---@param Dilation float
---@param __WorldContext UObject
UTimeDilationManagement_C['SetBaseTime Dilation'] = function(self, Dilation, __WorldContext) end

---@param Duration float
---@param __WorldContext UObject
UTimeDilationManagement_C['Trigger Hit Stop'] = function(self, Duration, __WorldContext) end
