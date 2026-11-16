---@meta

---@class FGameplayResourceSet
local FGameplayResourceSet = {}

---@class IGameplayTaskOwnerInterface : IInterface
local IGameplayTaskOwnerInterface = {}

---@class UGameplayTask : UObject
---@field InstanceName FName
---@field ResourceOverlapPolicy ETaskResourceOverlapPolicy
---@field ChildTask UGameplayTask
local UGameplayTask = {}

---@class UGameplayTaskResource : UObject
---@field ManualResourceID int32
---@field AutoResourceID int8
---@field bManuallySetID boolean
local UGameplayTaskResource = {}

---@class UGameplayTask_ClaimResource : UGameplayTask
local UGameplayTask_ClaimResource = {}

---@class UGameplayTask_SpawnActor : UGameplayTask
---@field Success FGameplayTask_SpawnActorSuccess
---@field DidNotSpawn FGameplayTask_SpawnActorDidNotSpawn
---@field ClassToSpawn TSubclassOf<AActor>
local UGameplayTask_SpawnActor = {}

---@class UGameplayTask_TimeLimitedExecution : UGameplayTask
---@field OnFinished FGameplayTask_TimeLimitedExecutionOnFinished
---@field OnTimeExpired FGameplayTask_TimeLimitedExecutionOnTimeExpired
local UGameplayTask_TimeLimitedExecution = {}

---@class UGameplayTask_WaitDelay : UGameplayTask
---@field OnFinish FGameplayTask_WaitDelayOnFinish
local UGameplayTask_WaitDelay = {}

---@class UGameplayTasksComponent : UActorComponent
---@field bIsNetDirty boolean
---@field SimulatedTasks TArray<UGameplayTask>
---@field TaskPriorityQueue TArray<UGameplayTask>
---@field TickingTasks TArray<UGameplayTask>
---@field KnownTasks TArray<UGameplayTask>
---@field OnClaimedResourcesChange FGameplayTasksComponentOnClaimedResourcesChange
local UGameplayTasksComponent = {}

function UGameplayTask:EndTask() end

function UGameplayTask:GenericGameplayTaskDelegate__DelegateSignature() end

function UGameplayTask:ReadyForActivation() end

---@param InTaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param ResourceClass TSubclassOf<UGameplayTaskResource>
---@param Priority uint8
---@param TaskInstanceName FName
function UGameplayTask_ClaimResource:ClaimResource(InTaskOwner, ResourceClass, Priority, TaskInstanceName) end

---@param InTaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param ResourceClasses TArray<TSubclassOf<UGameplayTaskResource>>
---@param Priority uint8
---@param TaskInstanceName FName
function UGameplayTask_ClaimResource:ClaimResources(InTaskOwner, ResourceClasses, Priority, TaskInstanceName) end

---@param WorldContextObject UObject
---@param SpawnedActor AActor
function UGameplayTask_SpawnActor:BeginSpawningActor(WorldContextObject, SpawnedActor) end

---@param WorldContextObject UObject
---@param SpawnedActor AActor
function UGameplayTask_SpawnActor:FinishSpawningActor(WorldContextObject, SpawnedActor) end

---@param TaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param SpawnLocation FVector
---@param SpawnRotation FRotator
---@param Class TSubclassOf<AActor>
---@param bSpawnOnlyOnAuthority boolean
function UGameplayTask_SpawnActor:SpawnActor(TaskOwner, SpawnLocation, SpawnRotation, Class, bSpawnOnlyOnAuthority) end

function UGameplayTask_WaitDelay:TaskDelayDelegate__DelegateSignature() end

---@param TaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param Time float
---@param Priority uint8
function UGameplayTask_WaitDelay:TaskWaitDelay(TaskOwner, Time, Priority) end

---@param TaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param Task UGameplayTask
---@param Priority uint8
---@param AdditionalRequiredResources TArray<TSubclassOf<UGameplayTaskResource>>
---@param AdditionalClaimedResources TArray<TSubclassOf<UGameplayTaskResource>>
function UGameplayTasksComponent:K2_RunGameplayTask(TaskOwner, Task, Priority, AdditionalRequiredResources, AdditionalClaimedResources) end

function UGameplayTasksComponent:OnRep_SimulatedTasks() end
