---@meta

---@class AVideoConfigParticleManager_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ParticleTickComponents TArray<UNiagaraComponent>
---@field ParticleTickTargets TArray<AActor>
---@field LastTime float
---@field DT float
local AVideoConfigParticleManager_C = {}

---@param EntryPoint int32
function AVideoConfigParticleManager_C:ExecuteUbergraph_VideoConfigParticleManager(EntryPoint) end

function AVideoConfigParticleManager_C:ReceiveBeginPlay() end

function AVideoConfigParticleManager_C:Update() end
