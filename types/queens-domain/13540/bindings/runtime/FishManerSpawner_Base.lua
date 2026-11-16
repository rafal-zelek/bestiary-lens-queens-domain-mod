---@meta

---@class AFishManerSpawner_Base_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field waterpreview USkeletalMeshComponent
---@field landingpreview USkeletalMeshComponent
---@field TrapExitWaterPosition FVector
---@field SpawnPositionOffsetFromWaterPosition float
---@field TrapSplashExitWaterTime float
---@field TrapEnableLandingSplash boolean
---@field WorshipTrapModesActivationDelay float
local AFishManerSpawner_Base_C = {}

---@param EntryPoint int32
function AFishManerSpawner_Base_C:ExecuteUbergraph_FishManerSpawner_Base(EntryPoint) end

function AFishManerSpawner_Base_C:ReceiveBeginPlay() end

function AFishManerSpawner_Base_C:UserConstructionScript() end
