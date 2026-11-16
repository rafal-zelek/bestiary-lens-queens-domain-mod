---@meta

---@class FActorLayer
---@field Name FName
local FActorLayer = {}

---@class ULayersBlueprintLibrary : UBlueprintFunctionLibrary
local ULayersBlueprintLibrary = {}

---@param InActor AActor
---@param Layer FActorLayer
function ULayersBlueprintLibrary:AddActorToLayer(InActor, Layer) end

---@param WorldContextObject UObject
---@param ActorLayer FActorLayer
function ULayersBlueprintLibrary:GetActors(WorldContextObject, ActorLayer) end

---@param InActor AActor
---@param Layer FActorLayer
function ULayersBlueprintLibrary:RemoveActorFromLayer(InActor, Layer) end
