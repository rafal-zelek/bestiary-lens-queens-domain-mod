---@meta

---@class UPlayer_QueryContext_C : UEnvQueryContext_BlueprintBase
local UPlayer_QueryContext_C = {}

---@param QuerierObject UObject
---@param QuerierActor AActor
---@param ResultingActor AActor
function UPlayer_QueryContext_C:ProvideSingleActor(QuerierObject, QuerierActor, ResultingActor) end

---@param QuerierObject UObject
---@param QuerierActor AActor
---@param ResultingLocation FVector
function UPlayer_QueryContext_C:ProvideSingleLocation(QuerierObject, QuerierActor, ResultingLocation) end
