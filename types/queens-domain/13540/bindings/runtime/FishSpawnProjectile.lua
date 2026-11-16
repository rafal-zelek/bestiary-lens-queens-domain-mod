---@meta

---@class AFishSpawnProjectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_HorizontalDistance_AF6D34234B0B33B36B7417A32E0DCF0E float
---@field Timeline_0_Height_AF6D34234B0B33B36B7417A32E0DCF0E float
---@field Timeline_0__Direction_AF6D34234B0B33B36B7417A32E0DCF0E ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field TargetLocation FTransform
---@field OwningWhaleBoss AActor
---@field MovementStartTransform FTransform
---@field Fish AFisher_KingAdd_BP_C
local AFishSpawnProjectile_C = {}

---@param EntryPoint int32
function AFishSpawnProjectile_C:ExecuteUbergraph_FishSpawnProjectile(EntryPoint) end

function AFishSpawnProjectile_C:ReceiveBeginPlay() end

function AFishSpawnProjectile_C:Timeline_0__FinishedFunc() end

function AFishSpawnProjectile_C:Timeline_0__UpdateFunc() end
