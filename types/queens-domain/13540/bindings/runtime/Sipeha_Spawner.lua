---@meta

---@class ASipeha_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DoorParent AActor
---@field DoorClosedPos AActor
---@field DoorBlocker AActor
---@field DoorOpenPos AActor
---@field DoorParticles ANiagaraActor
local ASipeha_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASipeha_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ASipeha_Spawner_C:ExecuteUbergraph_Sipeha_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ASipeha_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function ASipeha_Spawner_C:PlayerTeleportedOutOfBossArena() end

function ASipeha_Spawner_C:ReceiveBeginPlay() end
