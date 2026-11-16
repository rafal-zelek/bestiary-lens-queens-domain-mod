---@meta

---@class ATeleporter_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DeleteEnemyArea USphereComponent
---@field PlatformAreaSphere USphereComponent
---@field TeleporterGlow UStaticMeshComponent
---@field WorldEventReceiver UWorldEventReceiver_C
---@field Tent UStaticMeshComponent
---@field CollisionCube1 UStaticMeshComponent
---@field CollisionCube UStaticMeshComponent
---@field Teleporter UStaticMeshComponent
---@field TeleportPlacement USceneComponent
---@field Interactioncoll USphereComponent
---@field RegisterSphere USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field Activated_NewTrack_0_8420F90D4047D9893D06EA906C55A293 float
---@field Activated__Direction_8420F90D4047D9893D06EA906C55A293 ETimelineDirection::Type
---@field Activated UTimelineComponent
---@field LeavingAnim_Activated_FE86AB2840E681ABD2C26CB771FA964F float
---@field LeavingAnim_TeleporterFade_FE86AB2840E681ABD2C26CB771FA964F float
---@field LeavingAnim_TentFade_FE86AB2840E681ABD2C26CB771FA964F float
---@field LeavingAnim__Direction_FE86AB2840E681ABD2C26CB771FA964F ETimelineDirection::Type
---@field LeavingAnim UTimelineComponent
---@field ActiveUI UTeleporterUI_C
---@field ['Player Interacting'] AFS_PlayerChar_C
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field LocationData UFS_LocationData
---@field DisableFogAlpha boolean
---@field ShowTent boolean
---@field CurrentlyTeleporting boolean
---@field TeleportInteractBlocked boolean
---@field LocationRenderer AActor
---@field AltLocationRenderer AActor
---@field TempTeleporter boolean
local ATeleporter_C = {}

function ATeleporter_C:Activated__FinishedFunc() end

function ATeleporter_C:Activated__UpdateFunc() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ATeleporter_C:BndEvt__Teleporter_PlatformAreaSphere_K2Node_ComponentBoundEvent_3_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ATeleporter_C:BndEvt__Teleporter_RegisterSphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ATeleporter_C:BndEvt__Teleporter_Tent_K2Node_ComponentBoundEvent_1_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param NewValue int32
function ATeleporter_C:BndEvt__Teleporter_WorldEventReceiver_K2Node_ComponentBoundEvent_5_OnQuestStateUpdated__DelegateSignature(NewValue) end

function ATeleporter_C:DoArrivingTransition() end

function ATeleporter_C:DoLeavingTransition() end

function ATeleporter_C:DoSecret() end

function ATeleporter_C:EraseNearbyEnemies() end

---@param EntryPoint int32
function ATeleporter_C:ExecuteUbergraph_Teleporter(EntryPoint) end

function ATeleporter_C:Exit() end

function ATeleporter_C:GetAltThumbnailRenderer() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ATeleporter_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ATeleporter_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ATeleporter_C:GetLocationData() end

function ATeleporter_C:GetThumbnailRenderer() end

---@param PlayerInteracting AActor
function ATeleporter_C:Interact(PlayerInteracting) end

function ATeleporter_C:IsRenderer() end

function ATeleporter_C:LeavingAnim__FinishedFunc() end

function ATeleporter_C:LeavingAnim__UpdateFunc() end

function ATeleporter_C:PlayerTeleportedTo() end

function ATeleporter_C:ReceiveBeginPlay() end

---@param Actor AActor
---@param Mode FName
function ATeleporter_C:ReceiveTeleport(Actor, Mode) end

---@param OnLoad boolean
function ATeleporter_C:RegisteredGlow(OnLoad) end

function ATeleporter_C:ResetAnim() end

function ATeleporter_C:ResetFully() end

---@param DA UENVControlData_C
function ATeleporter_C:SetAlphaFogDA(DA) end

---@param Renderer TScriptInterface<IFS_Destination>
function ATeleporter_C:SetAltThumbnailRenderer(Renderer) end

---@param DA UENVControlData_C
function ATeleporter_C:SetBetaFogDA(DA) end

---@param Renderer TScriptInterface<IFS_Destination>
function ATeleporter_C:SetThumbnailRenderer(Renderer) end

function ATeleporter_C:SetToTempTPActiveState() end

---@param Target UFS_LocationData
function ATeleporter_C:Teleport(Target) end

function ATeleporter_C:UpdateFogDAValues() end

function ATeleporter_C:UpdateTeleportTransform() end

function ATeleporter_C:UserConstructionScript() end
