---@meta

---@class AWhaleKing_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InitialLocation USceneComponent
---@field Cylinder_0 UStaticMeshComponent
---@field ArenaWater_Ref AFS_StaticMeshActor_C
---@field DoorToUnlock AAquaBossExitDoor_C
---@field SuspendLocation APlayerTeleportTargetPos_C
local AWhaleKing_Spawner_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AWhaleKing_Spawner_C:BndEvt__WhaleKing_Spawner_Cylinder_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param EntryPoint int32
function AWhaleKing_Spawner_C:ExecuteUbergraph_WhaleKing_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AWhaleKing_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AWhaleKing_Spawner_C:PlayerTeleportedOutOfBossArena() end

function AWhaleKing_Spawner_C:ReceiveBeginPlay() end

function AWhaleKing_Spawner_C:Reset() end

---@param Data TArray<FSavableActorState>
AWhaleKing_Spawner_C['Restore State From Save Data'] = function(self, Data) end
