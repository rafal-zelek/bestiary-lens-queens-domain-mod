---@meta

---@class AGreenDragon_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LordSpawner AJosamiLord_Green_Spawner_C
---@field BothBossesDeadActivationTargets TArray<TScriptInterface<IActivatable_C>>
---@field FrontDoor ADoor_Base_C
---@field RearDoor ADoor_Base_C
---@field LordIsDead boolean
---@field DragonIsDead boolean
local AGreenDragon_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AGreenDragon_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AGreenDragon_Spawner_C:ExecuteUbergraph_GreenDragon_Spawner(EntryPoint) end

---@param DeathLocation FVector
function AGreenDragon_Spawner_C:LordWasKilled(DeathLocation) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AGreenDragon_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AGreenDragon_Spawner_C:PlayerTeleportedOutOfBossArena() end

function AGreenDragon_Spawner_C:ReceiveBeginPlay() end

function AGreenDragon_Spawner_C:RespawnEnemy() end
