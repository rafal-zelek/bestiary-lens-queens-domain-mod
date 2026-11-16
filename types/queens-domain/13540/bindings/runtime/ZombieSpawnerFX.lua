---@meta

---@class AZombieSpawnerFX_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EaterCastFX UNiagaraComponent
---@field Spline USplineComponent
---@field DefaultSceneRoot USceneComponent
---@field aRCaNIM_NewTrack_1_C30406D44CF6BE9650AE2CA65C4F47F2 float
---@field aRCaNIM__Direction_C30406D44CF6BE9650AE2CA65C4F47F2 ETimelineDirection::Type
---@field aRCaNIM UTimelineComponent
---@field Path FPredictProjectilePathResult
---@field Finished FZombieSpawnerFX_CFinished
---@field Position FVector
local AZombieSpawnerFX_C = {}

---@param EntryPoint int32
function AZombieSpawnerFX_C:ExecuteUbergraph_ZombieSpawnerFX(EntryPoint) end

---@param Position FVector
function AZombieSpawnerFX_C:Finished__DelegateSignature(Position) end

function AZombieSpawnerFX_C:ReceiveBeginPlay() end

function AZombieSpawnerFX_C:aRCaNIM__FinishedFunc() end

function AZombieSpawnerFX_C:aRCaNIM__UpdateFunc() end
