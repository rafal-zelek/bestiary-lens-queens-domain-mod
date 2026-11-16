---@meta

---@class AOrbiter_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FirstTimeSpawnSpot AActor
---@field ScienceQuestManager AActorQuestStateManager_C
---@field DyingScientist AScientist_Kicked_NPC_C
---@field DeadScientistQuestmanager AActorQuestStateManager_C
local AOrbiter_Spawner_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AOrbiter_Spawner_C:BndEvt__Orbiter_Spawner_TrapActivateTrigger_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param Reset boolean
---@param Success boolean
---@param Failed_Due_To_Named_Save_Data boolean
function AOrbiter_Spawner_C:CheckSpawnConditions(Reset, Success, Failed_Due_To_Named_Save_Data) end

---@param EntryPoint int32
function AOrbiter_Spawner_C:ExecuteUbergraph_Orbiter_Spawner(EntryPoint) end

function AOrbiter_Spawner_C:GetSpawnLoc() end

---@param NotifyName FName
function AOrbiter_Spawner_C:OnBlendOut_B81771FC4D748443DD88D49D4E9EEFA9(NotifyName) end

---@param NotifyName FName
function AOrbiter_Spawner_C:OnCompleted_B81771FC4D748443DD88D49D4E9EEFA9(NotifyName) end

---@param NotifyName FName
function AOrbiter_Spawner_C:OnInterrupted_B81771FC4D748443DD88D49D4E9EEFA9(NotifyName) end

---@param NotifyName FName
function AOrbiter_Spawner_C:OnNotifyBegin_B81771FC4D748443DD88D49D4E9EEFA9(NotifyName) end

---@param NotifyName FName
function AOrbiter_Spawner_C:OnNotifyEnd_B81771FC4D748443DD88D49D4E9EEFA9(NotifyName) end

function AOrbiter_Spawner_C:PlayerRested() end

function AOrbiter_Spawner_C:ReceiveBeginPlay() end

function AOrbiter_Spawner_C:SpawnEnemyWithConfigApplied() end
