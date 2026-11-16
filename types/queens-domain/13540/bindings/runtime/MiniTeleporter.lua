---@meta

---@class AMiniTeleporter_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field PlatformAreaSphere USphereComponent
---@field InteractBox UBoxComponent
---@field arrow UArrowComponent
---@field Capsule UCapsuleComponent
---@field PlayerTPLocation UBillboardComponent
---@field StaticMesh UStaticMeshComponent
---@field Area USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field Mode MiniTeleporterMode::Type
---@field LocationDA UAreaName_C
---@field TargetLocationDA UAreaName_C
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field ['Player Interacting'] AFS_PlayerChar_C
---@field TeleportInteractBlocked boolean
---@field LocationRenderer TScriptInterface<IFS_Destination>
local AMiniTeleporter_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AMiniTeleporter_C:BndEvt__ShopTeleportDestination_PlatformAreaSphere_K2Node_ComponentBoundEvent_0_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function AMiniTeleporter_C:ExecuteUbergraph_MiniTeleporter(EntryPoint) end

function AMiniTeleporter_C:GetAltThumbnailRenderer() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AMiniTeleporter_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AMiniTeleporter_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function AMiniTeleporter_C:GetLocationData() end

function AMiniTeleporter_C:GetThumbnailRenderer() end

---@param PlayerInteracting AActor
function AMiniTeleporter_C:Interact(PlayerInteracting) end

function AMiniTeleporter_C:IsRenderer() end

---@param Actor AActor
---@param Mode FName
function AMiniTeleporter_C:ReceiveTeleport(Actor, Mode) end

function AMiniTeleporter_C:ReceivedPlayer() end

---@param DA UENVControlData_C
function AMiniTeleporter_C:SetAlphaFogDA(DA) end

---@param Renderer TScriptInterface<IFS_Destination>
function AMiniTeleporter_C:SetAltThumbnailRenderer(Renderer) end

---@param DA UENVControlData_C
function AMiniTeleporter_C:SetBetaFogDA(DA) end

---@param Renderer TScriptInterface<IFS_Destination>
function AMiniTeleporter_C:SetThumbnailRenderer(Renderer) end

function AMiniTeleporter_C:UpdateFogDAValues() end

function AMiniTeleporter_C:UpdateTeleportTransform() end

function AMiniTeleporter_C:UserConstructionScript() end
