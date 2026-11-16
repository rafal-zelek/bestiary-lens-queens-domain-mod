---@meta

---@class AMovingActor_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LoopingAudio UAudioComponent
---@field InitialLoc FTransform
---@field MoveOffset FVector
---@field MoveRotation FRotator
---@field TravelTime float
---@field FinalLoc FTransform
---@field MoveIsWorldSpace boolean
---@field CurrentTime float
---@field TravelDir boolean
---@field ReachedEndSound USoundBase
---@field StartedMoving FMovingActor_CStartedMoving
---@field ReachedEnd FMovingActor_CReachedEnd
---@field MovementIsPaused boolean
---@field ParticlesToManage ANiagaraActor
---@field ParticleDelay float
local AMovingActor_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AMovingActor_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AMovingActor_C:CacheTransforms() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AMovingActor_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AMovingActor_C:ExecuteUbergraph_MovingActor(EntryPoint) end

function AMovingActor_C:LoadAtEnd() end

---@param MovedTowardsStart boolean
---@param FromLoad boolean
function AMovingActor_C:ReachedEnd__DelegateSignature(MovedTowardsStart, FromLoad) end

function AMovingActor_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AMovingActor_C:ReceiveTick(DeltaSeconds) end

---@param ToEnd boolean
function AMovingActor_C:StartedMoving__DelegateSignature(ToEnd) end

function AMovingActor_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AMovingActor_C['Restore State From Save Data'] = function(self, Data) end
