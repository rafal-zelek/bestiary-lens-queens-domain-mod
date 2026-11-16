---@meta

---@class ITimeDilationManager_C : IInterface
local ITimeDilationManager_C = {}

---@param Paused boolean
function ITimeDilationManager_C:IsEnemyPauseTDLEnabled(Paused) end

---@param Paused boolean
function ITimeDilationManager_C:IsPausedTimeDilationEnabled(Paused) end

---@param Pause boolean
function ITimeDilationManager_C:SetPauseTimeDilation(Pause) end

---@param Paused boolean
function ITimeDilationManager_C:SetPausedEnemyTimeDilation(Paused) end

---@param HitStopDuration float
function ITimeDilationManager_C:TriggerHitStop(HitStopDuration) end

ITimeDilationManager_C['Cancel HitStop'] = function(self) end

---@param Base_Time_Dilation float
ITimeDilationManager_C['Set BaseTimeDilation'] = function(self, Base_Time_Dilation) end

---@param Multiplier float
---@param Type TimeDilationModifierType::Type
ITimeDilationManager_C['Set Time Dilation Modifier'] = function(self, Multiplier, Type) end
