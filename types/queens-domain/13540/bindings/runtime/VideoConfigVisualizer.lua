---@meta

---@class AVideoConfigVisualizer_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Camera UCameraComponent
---@field Scene USceneComponent
---@field DefaultSceneRoot USceneComponent
---@field ParticleManager TArray<AVideoConfigParticleManager_C>
local AVideoConfigVisualizer_C = {}

---@param EntryPoint int32
function AVideoConfigVisualizer_C:ExecuteUbergraph_VideoConfigVisualizer(EntryPoint) end

function AVideoConfigVisualizer_C:ReceiveBeginPlay() end

function AVideoConfigVisualizer_C:Update() end
