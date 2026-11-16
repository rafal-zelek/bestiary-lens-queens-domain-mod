---@meta

---@class AJosamiBloodLord_Sword_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Door AJosamiPrisonDoor_C
---@field ArenaCenter AActor
---@field GunSpawner AJosamiBloodLord_Gun_Spawner_C
---@field GunnerDead boolean
---@field SwordDead boolean
local AJosamiBloodLord_Sword_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AJosamiBloodLord_Sword_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AJosamiBloodLord_Sword_Spawner_C:ExecuteUbergraph_JosamiBloodLord_Sword_Spawner(EntryPoint) end

---@param DeathLocation FVector
function AJosamiBloodLord_Sword_Spawner_C:GunDied(DeathLocation) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AJosamiBloodLord_Sword_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AJosamiBloodLord_Sword_Spawner_C:PlayerTeleportedOutOfBossArena() end

function AJosamiBloodLord_Sword_Spawner_C:ReceiveBeginPlay() end

function AJosamiBloodLord_Sword_Spawner_C:StartFight() end
