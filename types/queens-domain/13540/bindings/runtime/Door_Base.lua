---@meta

---@class ADoor_Base_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NavMeshBlocker UBoxComponent
---@field FrontSideInteract1 UTextRenderComponent
---@field FrontSideInteract UTextRenderComponent
---@field Arrow1 UArrowComponent
---@field InteractBox UBoxComponent
---@field arrow UArrowComponent
---@field DoorMesh UStaticMeshComponent
---@field KeyItems TMap<UFS_ItemData_C, int32>
---@field ['Key Tags to Show'] TSet<FName>
---@field OneSided boolean
---@field FlipOpenableSide boolean
---@field Opened boolean
---@field OpenSound USoundBase
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field DisableFogVertexColor boolean
---@field OpenedDoorPos FTransform
---@field NeedsScriptOpenText FText
---@field CurrentDoorOpeningSound UAudioComponent
---@field WrongSideMessage FText
---@field InteractedSide boolean
---@field ForwardAxis FVector
---@field ['Door Forward Is Y'] boolean
---@field DoorOpened FDoor_Base_CDoorOpened
---@field ['Player Interacting'] AFS_PlayerChar_C
---@field ScriptOpenable boolean
---@field ActivationsNeededForOpen int32
---@field DoNotClampActivations boolean
---@field SaveScriptOpened boolean
---@field CurrentActivationCount int32
---@field DoorClosed FDoor_Base_CDoorClosed
---@field OpenRumble UForceFeedbackEffect
---@field OpenRumbleLooping boolean
---@field OpenRumble_Atten UForceFeedbackAttenuation
---@field OpenFinishedRumble UForceFeedbackEffect
---@field CurrentOpenRumble UForceFeedbackComponent
---@field ['Forward Dot'] float
local ADoor_Base_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ADoor_Base_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Have_All_keys boolean
function ADoor_Base_C:CheckRequiredItems(Have_All_keys) end

function ADoor_Base_C:CloseDoor() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ADoor_Base_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function ADoor_Base_C:DisableNavBlock() end

---@param Component UForceFeedbackComponent
function ADoor_Base_C:DoOpenRumble(Component) end

function ADoor_Base_C:DoorClosed__DelegateSignature() end

---@param FromLoad boolean
function ADoor_Base_C:DoorOpened__DelegateSignature(FromLoad) end

function ADoor_Base_C:EnableNavBlock() end

---@param EntryPoint int32
function ADoor_Base_C:ExecuteUbergraph_Door_Base(EntryPoint) end

function ADoor_Base_C:FinishOpenRumble() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ADoor_Base_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ADoor_Base_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function ADoor_Base_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param Player AActor
function ADoor_Base_C:GetPlayerPositionOnForwardAxis(Player) end

---@param Key UFS_ItemData_C
function ADoor_Base_C:InsertKey(Key) end

---@param PlayerInteracting AActor
function ADoor_Base_C:Interact(PlayerInteracting) end

function ADoor_Base_C:OpenDoor() end

function ADoor_Base_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ADoor_Base_C:ReceiveTick(DeltaSeconds) end

---@param DA UENVControlData_C
function ADoor_Base_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ADoor_Base_C:SetBetaFogDA(DA) end

function ADoor_Base_C:SetToOpenState() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function ADoor_Base_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

---@param OnLoad boolean
function ADoor_Base_C:UpdateDoorStateBasedOnActivation(OnLoad) end

function ADoor_Base_C:UpdateFogDAValues() end

function ADoor_Base_C:UserConstructionScript() end

---@param Player AActor
ADoor_Base_C['Is Player Relative Transform Valid'] = function(self, Player) end

---@param Data TArray<FSavableActorState>
ADoor_Base_C['Restore State From Save Data'] = function(self, Data) end
