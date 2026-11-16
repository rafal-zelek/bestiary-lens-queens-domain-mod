---@meta

---@class AFlyingEnemyBase_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field UseHaloFlightTargetMode boolean
---@field GeneratedFlightTarget FVector
---@field CurrentHaloEQS UEnvQueryInstanceBlueprintWrapper
---@field RunningEQS boolean
---@field TimeSinceLastNormalMovement float
---@field ['FlightThinksIt\'sStuck'] boolean
---@field CurrentMovementDIr FVector
---@field NonHaloTargetPosOffset FVector
---@field Wandering_0_0 boolean
---@field FlyingECS UEnvQuery
---@field FlightNavHaloRadius float
---@field SimpleFlightControl boolean
local AFlyingEnemyBase_C = {}

function AFlyingEnemyBase_C:BecameUnstuck() end

---@param Valid_Target_was_Calculated boolean
---@param Target FVector
function AFlyingEnemyBase_C:CalculateWanderTarget(Valid_Target_was_Calculated, Target) end

function AFlyingEnemyBase_C:CheckChase() end

function AFlyingEnemyBase_C:ContinueWandering() end

function AFlyingEnemyBase_C:EndParalysis() end

---@param EntryPoint int32
function AFlyingEnemyBase_C:ExecuteUbergraph_FlyingEnemyBase(EntryPoint) end

---@param Target FVector
function AFlyingEnemyBase_C:GetFlightTarget(Target) end

function AFlyingEnemyBase_C:MoveTowardsPlayer() end

---@param Duration float
function AFlyingEnemyBase_C:Paralyze(Duration) end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function AFlyingEnemyBase_C:QueryFinished(QueryInstance, QueryStatus) end

function AFlyingEnemyBase_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFlyingEnemyBase_C:ReceiveTick(DeltaSeconds) end

function AFlyingEnemyBase_C:Stagger() end

function AFlyingEnemyBase_C:StaggerEnded() end

function AFlyingEnemyBase_C:StartWandering() end

function AFlyingEnemyBase_C:StopWandering() end

AFlyingEnemyBase_C['Should Move Towards Player'] = function(self) end

AFlyingEnemyBase_C['Stuck In Corner'] = function(self) end
