---@meta

---@class UAOEAndHomingUtility_C : UBlueprintFunctionLibrary
local UAOEAndHomingUtility_C = {}

---@param Start FVector
---@param DrawDebugType EDrawDebugTrace::Type
---@param Radius float
---@param HitPlayer boolean
---@param __WorldContext UObject
---@param Targets TArray<AActor>
---@param Success boolean
function UAOEAndHomingUtility_C:AOETest(Start, DrawDebugType, Radius, HitPlayer, __WorldContext, Targets, Success) end

---@param Start FVector
---@param DrawDebugType EDrawDebugTrace::Type
---@param Radius float
---@param HitPlayer boolean
---@param Damage FFB_DamageAttributeSet
---@param Applier AActor
---@param __WorldContext UObject
---@param Successfully_hit boolean
function UAOEAndHomingUtility_C:ApplyDamageInAOE(Start, DrawDebugType, Radius, HitPlayer, Damage, Applier, __WorldContext, Successfully_hit) end

---@param Start FVector
---@param DrawDebugType EDrawDebugTrace::Type
---@param Radius float
---@param HitPlayer boolean
---@param Damage FFB_DamageAttributeSet
---@param Applier AActor
---@param ActorsToIgnore TArray<AActor>
---@param __WorldContext UObject
---@param HitTargets_Out TArray<AActor>
function UAOEAndHomingUtility_C:ApplyDamageInAOE_COmplex(Start, DrawDebugType, Radius, HitPlayer, Damage, Applier, ActorsToIgnore, __WorldContext, HitTargets_Out) end

---@param MaxAngle float
---@param Range float
---@param OwnActor AActor
---@param TraceChannel ETraceTypeQuery
---@param __WorldContext UObject
---@param Target AActor
function UAOEAndHomingUtility_C:FindHomingTarget(MaxAngle, Range, OwnActor, TraceChannel, __WorldContext, Target) end

---@param Actor AActor
---@param __WorldContext UObject
---@param TargetPos FVector
function UAOEAndHomingUtility_C:GetHomingTargetOnActor(Actor, __WorldContext, TargetPos) end

---@param Target AActor
---@param Start FVector
---@param TraceChannel ETraceTypeQuery
---@param DrawDebugType EDrawDebugTrace::Type
---@param __WorldContext UObject
---@param HasLOS boolean
UAOEAndHomingUtility_C['AOE LOS Test'] = function(self, Target, Start, TraceChannel, DrawDebugType, __WorldContext, HasLOS) end
