---@meta

---@class AShaderCompileManager_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field Materials TArray<UMaterialInterface>
---@field NiagaraSystems TArray<UNiagaraSystem>
---@field CascadeSystems TArray<UParticleSystem>
---@field Camera ACameraActor
---@field ActiveSystems TArray<UPrimitiveComponent>
---@field CurSystemIndex int32
---@field CurIteration_StartIndex int32
---@field HUDOverlay UShaderCompileWidget_C
---@field Done FShaderCompileManager_CDone
---@field OldVT AActor
---@field LevelPath FString
local AShaderCompileManager_C = {}

function AShaderCompileManager_C:BuildCacheComps() end

function AShaderCompileManager_C:BuildRefList() end

function AShaderCompileManager_C:CleanUpSystems() end

---@param HUD UShaderCompileWidget_C
function AShaderCompileManager_C:CompileShaders(HUD) end

function AShaderCompileManager_C:DoNextSet() end

function AShaderCompileManager_C:Done__DelegateSignature() end

---@param EntryPoint int32
function AShaderCompileManager_C:ExecuteUbergraph_ShaderCompileManager(EntryPoint) end

function AShaderCompileManager_C:Finished() end

---@param Z float
---@param Index int32
function AShaderCompileManager_C:GetCompPos(Z, Index) end

function AShaderCompileManager_C:GetLevelPath() end

function AShaderCompileManager_C:GetSystemSpawn() end

---@param NewItem UMaterialInterface
function AShaderCompileManager_C:RegisterMat(NewItem) end

function AShaderCompileManager_C:UpdatePercent() end

function AShaderCompileManager_C:UserConstructionScript() end
