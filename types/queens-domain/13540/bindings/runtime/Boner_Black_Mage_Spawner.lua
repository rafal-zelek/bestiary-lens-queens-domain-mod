---@meta

---@class ABoner_Black_Mage_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ArenaTrigger UBoxComponent
---@field Doors TArray<ADoor_Base_C>
---@field SpawnGroup_0 TArray<AEnemySpawner_C>
---@field SpawnGroup_1 TArray<AEnemySpawner_C>
---@field SpawnGroup_2 TArray<AEnemySpawner_C>
---@field LastSpawnedGroup int32
---@field RegisteredSkull TArray<ABlackFlamingSkull_BP_C>
---@field PlayerIsPresent boolean
local ABoner_Black_Mage_Spawner_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABoner_Black_Mage_Spawner_C:BndEvt__Boner_Black_Mage_Spawner_ArenaTrigger_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ABoner_Black_Mage_Spawner_C:BndEvt__Boner_Black_Mage_Spawner_ArenaTrigger_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function ABoner_Black_Mage_Spawner_C:ExecuteUbergraph_Boner_Black_Mage_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ABoner_Black_Mage_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function ABoner_Black_Mage_Spawner_C:OnEnemyAggrod() end

---@param Enemy AEnemyBase_C
---@param Damage float
---@param Tags FGameplayTagContainer
---@param DataTags TMap<FGameplayTag, float>
function ABoner_Black_Mage_Spawner_C:OwnedEnemyTookDamage(Enemy, Damage, Tags, DataTags) end

function ABoner_Black_Mage_Spawner_C:PlayerTeleportedOutOfBossArena() end

function ABoner_Black_Mage_Spawner_C:ReceiveBeginPlay() end
