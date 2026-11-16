---@meta

---@class UComponentTimelineLibrary : UBlueprintFunctionLibrary
local UComponentTimelineLibrary = {}

---@class UComponentTimelineSettings : UDeveloperSettings
---@field bEnableObjectTimeline boolean
local UComponentTimelineSettings = {}

---@param Component UActorComponent
function UComponentTimelineLibrary:InitializeComponentTimelines(Component) end

---@param BlueprintOwner UObject
---@param ActorOwner AActor
function UComponentTimelineLibrary:InitializeTimelines(BlueprintOwner, ActorOwner) end
