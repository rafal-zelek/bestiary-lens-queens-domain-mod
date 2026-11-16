---@meta

---@class AOccasionalFXSpawner_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field FX UNiagaraSystem
---@field Sound USoundCue
---@field CullDist float
---@field MinSpawnTime float
---@field MaxSpawnTime float
---@field Timer FTimerHandle
local AOccasionalFXSpawner_C = {}

function AOccasionalFXSpawner_C:DoFX() end

---@param EntryPoint int32
function AOccasionalFXSpawner_C:ExecuteUbergraph_OccasionalFXSpawner(EntryPoint) end

function AOccasionalFXSpawner_C:ReceiveBeginPlay() end

function AOccasionalFXSpawner_C:SpawnFX() end
