---@meta

---@class ADemonSpider_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Arena ADemonBoss_FightController_C
---@field BatSpawner AHellbat_Spawner_C
---@field FrontDoor ASecretWall_C
---@field ExitDoor TScriptInterface<IActivatable_C>
---@field BatIsDead boolean
---@field SpiderIsDead boolean
---@field FrontDoorBlocker AActor
local ADemonSpider_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ADemonSpider_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeathLocation FVector
function ADemonSpider_Spawner_C:BatDied(DeathLocation) end

function ADemonSpider_Spawner_C:CheckBothDead() end

---@param EntryPoint int32
function ADemonSpider_Spawner_C:ExecuteUbergraph_DemonSpider_Spawner(EntryPoint) end

function ADemonSpider_Spawner_C:PlayerTeleportedOutOfBossArena() end

function ADemonSpider_Spawner_C:ReceiveBeginPlay() end

---@param DeathLocation FVector
function ADemonSpider_Spawner_C:SpiderDied(DeathLocation) end
