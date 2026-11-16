---@meta

---@class AElevator_Base_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NavModifier UNavModifierComponent
---@field SafeZoneBlocker_Bottom UBoxComponent
---@field SafeZoneBlocker UBoxComponent
---@field LoopingAudio UAudioComponent
---@field ElevatorPlatformRoot USceneComponent
---@field ElevatorPath_Internal TArray<FElevatorPathKeyframes>
---@field ElevatorPath TArray<FElevatorPathKeyframes>
---@field LoopMode ElevatorLoopMode::Type
---@field WaitTimeAtLoopEnds float
---@field PlayingInReverse boolean
---@field CurrentPathIndex int32
---@field Running boolean
---@field LockUntilRidden boolean
---@field StartLevers TArray<AElevatorLever_C>
---@field EndLevers TArray<AElevatorLever_C>
---@field AtEnd boolean
---@field LockedBecauseNoRide boolean
---@field OnboardLever AElevatorLever_C
---@field ActorsToActivateAtEnd TArray<TScriptInterface<IActivatable_C>>
---@field ActorsToActivateAtStart TArray<TScriptInterface<IActivatable_C>>
---@field ReachedBottom FElevator_Base_CReachedBottom
---@field ReachedTop FElevator_Base_CReachedTop
---@field StartingLoopMode ElevatorLoopMode::Type
---@field AlphaFogDA UENVControlData_C
---@field BetaFogDA UENVControlData_C
---@field DisableFogVertexColor boolean
---@field DelayBeforeMoveActerActivation float
---@field LoopModeRequiresActivation boolean
---@field ElevatorReachedPointSound USoundBase
---@field ElevatorReachedEndSound USoundBase
---@field ParticlesToManage TArray<ANiagaraActor>
---@field MovementAudioFadeInTime float
---@field MovementAudioFadeOut float
---@field LeversHaveBeenAttached boolean
---@field RidingRumble UForceFeedbackEffect
---@field ActivelyMoving boolean
---@field LastPos FVector
---@field ElevatorVelocity FVector
---@field Activated boolean
---@field AlreadyLoaded boolean
local AElevator_Base_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AElevator_Base_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AElevator_Base_C:AttachActorsToPlatform() end

function AElevator_Base_C:BottomLeverActivated() end

function AElevator_Base_C:CacheElevatorPath() end

function AElevator_Base_C:CacheStartingLoopMode() end

function AElevator_Base_C:CancelCurrentMove() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AElevator_Base_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AElevator_Base_C:ExecuteUbergraph_Elevator_Base(EntryPoint) end

function AElevator_Base_C:GetCollidingComponents() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AElevator_Base_C:GetCurrentFogDAs(Alpha, Beta) end

---@param Location FVector
---@param Rotation FRotator
---@param Time float
function AElevator_Base_C:GetNextPathTarget(Location, Rotation, Time) end

function AElevator_Base_C:GoToNextNode() end

function AElevator_Base_C:InitLevers() end

---@param Node int32
function AElevator_Base_C:IsNodeEnd(Node) end

---@param Unlocked boolean
function AElevator_Base_C:IsUnlocked(Unlocked) end

function AElevator_Base_C:NotifyLeversAboutStartMove() end

function AElevator_Base_C:OnboardLeverPulled() end

function AElevator_Base_C:PlayReachedEndSound() end

function AElevator_Base_C:ReachedBottom__DelegateSignature() end

function AElevator_Base_C:ReachedEnd() end

function AElevator_Base_C:ReachedPoint() end

function AElevator_Base_C:ReachedTop__DelegateSignature() end

function AElevator_Base_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function AElevator_Base_C:ReceiveEndPlay(EndPlayReason) end

---@param DeltaSeconds float
function AElevator_Base_C:ReceiveTick(DeltaSeconds) end

---@param DA UENVControlData_C
function AElevator_Base_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AElevator_Base_C:SetBetaFogDA(DA) end

---@param bRelevant boolean
function AElevator_Base_C:SetPlatformNavRelevant(bRelevant) end

function AElevator_Base_C:SetUpLevers() end

---@param Skipnav boolean
function AElevator_Base_C:SnapToTarget(Skipnav) end

function AElevator_Base_C:StartElevatorTowardsEnd() end

function AElevator_Base_C:StartParticles() end

function AElevator_Base_C:StopParticles() end

function AElevator_Base_C:StoppedMoving() end

function AElevator_Base_C:TopLeverActivated() end

function AElevator_Base_C:UpdateFogDAValues() end

function AElevator_Base_C:UpdateLevers() end

function AElevator_Base_C:Updatenav() end

function AElevator_Base_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AElevator_Base_C['Restore State From Save Data'] = function(self, Data) end
