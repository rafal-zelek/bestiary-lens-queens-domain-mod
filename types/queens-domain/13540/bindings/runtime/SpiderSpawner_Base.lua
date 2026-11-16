---@meta

---@class ASpiderSpawner_Base_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hangingpreview USkeletalMeshComponent
---@field StartingTrapPos FVector
---@field SpawnPositionOffsetFromWaterPosition float
---@field TrapSplashExitWaterTime float
---@field TrapEnableLandingSplash boolean
local ASpiderSpawner_Base_C = {}

---@param EntryPoint int32
function ASpiderSpawner_Base_C:ExecuteUbergraph_SpiderSpawner_Base(EntryPoint) end

function ASpiderSpawner_Base_C:ReceiveBeginPlay() end

function ASpiderSpawner_Base_C:UpdateFogDAValues() end

function ASpiderSpawner_Base_C:UserConstructionScript() end
