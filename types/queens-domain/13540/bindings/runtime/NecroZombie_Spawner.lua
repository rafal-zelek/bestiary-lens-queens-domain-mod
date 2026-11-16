---@meta

---@class ANecroZombie_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field FadeIn_fadein_61AFE51143889279629E21950A39CD7F float
---@field FadeIn__Direction_61AFE51143889279629E21950A39CD7F ETimelineDirection::Type
---@field FadeIn UTimelineComponent
---@field ZombieSpawnTime float
---@field Timer FTimerHandle
---@field SpawnedZombies TSet<AEnemyBase_C>
---@field ZombieSpawned FNecroZombie_Spawner_CZombieSpawned
local ANecroZombie_Spawner_C = {}

---@param Reset boolean
---@param Success boolean
---@param Failed_Due_To_Named_Save_Data boolean
function ANecroZombie_Spawner_C:CheckSpawnConditions(Reset, Success, Failed_Due_To_Named_Save_Data) end

---@param EntryPoint int32
function ANecroZombie_Spawner_C:ExecuteUbergraph_NecroZombie_Spawner(EntryPoint) end

function ANecroZombie_Spawner_C:FadeIn__FinishedFunc() end

function ANecroZombie_Spawner_C:FadeIn__UpdateFunc() end

function ANecroZombie_Spawner_C:PauseSpawning() end

function ANecroZombie_Spawner_C:ReceiveBeginPlay() end

function ANecroZombie_Spawner_C:SpawnAnotherZombie() end

function ANecroZombie_Spawner_C:SpawnEnemyWithConfigApplied() end

function ANecroZombie_Spawner_C:StartRespawnIfNotAlreadyRunning() end

function ANecroZombie_Spawner_C:UnpauseSpawning() end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ANecroZombie_Spawner_C:ZombieDied(NoReward, EnemyThatDied) end

---@param Zombie AEnemyBase_C
function ANecroZombie_Spawner_C:ZombieSpawned__DelegateSignature(Zombie) end

---@param ResetSpawn boolean
---@param Vis_Checks_Passed boolean
ANecroZombie_Spawner_C['Check Spawn Visibility'] = function(self, ResetSpawn, Vis_Checks_Passed) end

---@param Index int32
---@param Data int32
ANecroZombie_Spawner_C['Save Data Index to World Save'] = function(self, Index, Data) end
