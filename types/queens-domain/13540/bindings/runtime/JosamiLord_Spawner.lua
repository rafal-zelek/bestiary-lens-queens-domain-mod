---@meta

---@class AJosamiLord_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BridgeCenterTrigger ATriggerVolume
---@field FrontDoor AOW_BridgeDoor_C
---@field RearDoor AOW_BridgeDoor_C
---@field ArenaCenter AJosamiLord_ArenaOrientationActor_C
---@field CastleDoor ACastleFrontDoor_BP_C
local AJosamiLord_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AJosamiLord_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param OverlappedActor AActor
---@param OtherActor AActor
function AJosamiLord_Spawner_C:BndEvt__JosamiLord_Spawner_BridgeCenterTrigger_K2Node_ComponentBoundEvent_0_ActorBeginOverlapSignature__DelegateSignature(OverlappedActor, OtherActor) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AJosamiLord_Spawner_C:CloseDoorsTriggerOverlapped(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param EntryPoint int32
function AJosamiLord_Spawner_C:ExecuteUbergraph_JosamiLord_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AJosamiLord_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AJosamiLord_Spawner_C:PlayerTeleportedOutOfBossArena() end

function AJosamiLord_Spawner_C:ReceiveBeginPlay() end

function AJosamiLord_Spawner_C:RespawnEnemy() end

function AJosamiLord_Spawner_C:RestoreFromSave() end

---@param InitialSpawn boolean
function AJosamiLord_Spawner_C:RestoreFromSaveState(InitialSpawn) end

---@param CapsuleHalfHeight float
function AJosamiLord_Spawner_C:SetUpPlaceOnGroundHelp(CapsuleHalfHeight) end

---@param Ignore_Vis_Check boolean
---@param ResetSpawn boolean
AJosamiLord_Spawner_C['Try Spawning Enemy'] = function(self, Ignore_Vis_Check, ResetSpawn) end
