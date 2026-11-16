---@meta

---@class URumbleFunctions_C : UBlueprintFunctionLibrary
local URumbleFunctions_C = {}

---@param ForceFeedbackEffect UForceFeedbackEffect
---@param IntensityMultiplier float
---@param StartTime float
---@param bLooping boolean
---@param __WorldContext UObject
---@param Component UForceFeedbackComponent
URumbleFunctions_C['Play Player Rumble'] = function(self, ForceFeedbackEffect, IntensityMultiplier, StartTime, bLooping, __WorldContext, Component) end

---@param ForceFeedbackEffect UForceFeedbackEffect
---@param Attached boolean
---@param AttachToComponent USceneComponent
---@param AttachPointName FName
---@param Location FVector
---@param LocationType EAttachLocation::Type
---@param bLooping boolean
---@param IntensityMultiplier float
---@param StartTime float
---@param AttenuationSettings UForceFeedbackAttenuation
---@param bAutoDestroy boolean
---@param __WorldContext UObject
---@param Component UForceFeedbackComponent
URumbleFunctions_C['Play World Rumble'] = function(self, ForceFeedbackEffect, Attached, AttachToComponent, AttachPointName, Location, LocationType, bLooping, IntensityMultiplier, StartTime, AttenuationSettings, bAutoDestroy, __WorldContext, Component) end
