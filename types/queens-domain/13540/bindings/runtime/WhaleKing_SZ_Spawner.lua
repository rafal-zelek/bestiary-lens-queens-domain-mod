---@meta

---@class AWhaleKing_SZ_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ArenaArea UStaticMeshComponent
---@field InitialLocation USceneComponent
---@field ArenaWater_Ref AFS_StaticMeshActor_C
local AWhaleKing_SZ_Spawner_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AWhaleKing_SZ_Spawner_C:BndEvt__WhaleKing_SZ_Spawner_ArenaArea_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AWhaleKing_SZ_Spawner_C:BndEvt__WhaleKing_SZ_Spawner_ArenaArea_K2Node_ComponentBoundEvent_2_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

function AWhaleKing_SZ_Spawner_C:DoInitialSpawn() end

---@param EntryPoint int32
function AWhaleKing_SZ_Spawner_C:ExecuteUbergraph_WhaleKing_SZ_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AWhaleKing_SZ_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AWhaleKing_SZ_Spawner_C:ReceiveBeginPlay() end

function AWhaleKing_SZ_Spawner_C:Reset() end

function AWhaleKing_SZ_Spawner_C:StartInitialSpawnProcess() end

---@param Data TArray<FSavableActorState>
AWhaleKing_SZ_Spawner_C['Restore State From Save Data'] = function(self, Data) end
