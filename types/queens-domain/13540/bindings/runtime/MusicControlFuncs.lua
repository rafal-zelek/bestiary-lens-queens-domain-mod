---@meta

---@class UMusicControlFuncs_C : UBlueprintFunctionLibrary
local UMusicControlFuncs_C = {}

---@param __WorldContext UObject
---@param Controller AMusicController_C
function UMusicControlFuncs_C:GetMusicController(__WorldContext, Controller) end

---@param __WorldContext UObject
function UMusicControlFuncs_C:MusicSystemResetDoorTriggers(__WorldContext) end

---@param Track USoundCue
---@param __WorldContext UObject
UMusicControlFuncs_C['Script Override Music Track'] = function(self, Track, __WorldContext) end
