---@meta

---@class ADemonBoss_FightController_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LavaPathSpline USplineComponent
---@field Spline USplineComponent
---@field DefaultSceneRoot USceneComponent
---@field ManagedPuddles TArray<ADemonSpider_MagmaPuddle_C>
---@field LavaDamage float
local ADemonBoss_FightController_C = {}

---@param EntryPoint int32
function ADemonBoss_FightController_C:ExecuteUbergraph_DemonBoss_FightController(EntryPoint) end

---@param RelativeTo AEnemyBase_C
---@param Angle float
---@param Distance float
function ADemonBoss_FightController_C:GetPlayerRelativePosition(RelativeTo, Angle, Distance) end

---@param StartingPoint FVector
---@param Facing_CCW boolean
---@param TargetPoint FVector
---@param Yaw float
function ADemonBoss_FightController_C:GetTrackTargetLocation(StartingPoint, Facing_CCW, TargetPoint, Yaw) end

---@param Actor AActor
---@param Angle float
---@param Distance float
function ADemonBoss_FightController_C:ProjectActorPositionOnTrack(Actor, Angle, Distance) end

---@param Angle float
---@param Distance float
function ADemonBoss_FightController_C:ProjectPlayerPositionOnTrack(Angle, Distance) end

---@param Pos FVector
---@param Angle float
---@param Distance float
function ADemonBoss_FightController_C:ProjectWorldLocationOntoTrack(Pos, Angle, Distance) end

function ADemonBoss_FightController_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ADemonBoss_FightController_C:ReceiveTick(DeltaSeconds) end

---@param Radius float
---@param Position FVector
function ADemonBoss_FightController_C:SpawnMagmaPuddle(Radius, Position) end

function ADemonBoss_FightController_C:UpdateMagmaPuddles() end

---@param Colliding boolean
ADemonBoss_FightController_C['Check Puddles Colliding With Player'] = function(self, Colliding) end

---@param Puddle ADemonSpider_MagmaPuddle_C
ADemonBoss_FightController_C['Magma Puddle Despawning'] = function(self, Puddle) end
