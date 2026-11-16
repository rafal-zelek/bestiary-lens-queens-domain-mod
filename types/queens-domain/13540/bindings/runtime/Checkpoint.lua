---@meta

---@class ACheckpoint_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DuckSnapLocation UBillboardComponent
---@field PlatformAreaSphere USphereComponent
---@field PostProcess UPostProcessComponent
---@field GlowSpriteComp UGlowSpriteComp_C
---@field WorldEventReceiver UWorldEventReceiver_C
---@field InteractBox UBoxComponent
---@field arrow UArrowComponent
---@field Capsule UCapsuleComponent
---@field PlayerTPLocation UBillboardComponent
---@field PointLight UPointLightComponent
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_5_Dissolve_70FDFC98413122F011823596D1424723 float
---@field Timeline_5_Glow_70FDFC98413122F011823596D1424723 float
---@field Timeline_5__Direction_70FDFC98413122F011823596D1424723 ETimelineDirection::Type
---@field Timeline_5 UTimelineComponent
---@field Timeline_6_PlayerPos_0BA7691141A888A41F678D901317191D float
---@field Timeline_6__Direction_0BA7691141A888A41F678D901317191D ETimelineDirection::Type
---@field Timeline_6 UTimelineComponent
---@field Timeline_4__Direction_78C2411A416F70B808F6CA8C7C6E938B ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field FloatyGreenUI_DownFade_5E840C4B4808CCCF19BAAB9C243A851C float
---@field FloatyGreenUI_Opacity_5E840C4B4808CCCF19BAAB9C243A851C float
---@field FloatyGreenUI__Direction_5E840C4B4808CCCF19BAAB9C243A851C ETimelineDirection::Type
---@field FloatyGreenUI UTimelineComponent
---@field Timeline_3_CheckpointFlash_EEF4B148485F75DB242B42BB574D37FB float
---@field Timeline_3__Direction_EEF4B148485F75DB242B42BB574D37FB ETimelineDirection::Type
---@field Timeline_3 UTimelineComponent
---@field Timeline_2_Fade_62930B054A9620B2DD6BAAA6AAF06F86 float
---@field Timeline_2__Direction_62930B054A9620B2DD6BAAA6AAF06F86 ETimelineDirection::Type
---@field Timeline_2 UTimelineComponent
---@field Timeline_1_CheckpointFlash_31ABD69A4539CC635C5A14879265E738 float
---@field Timeline_1__Direction_31ABD69A4539CC635C5A14879265E738 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_CheckpointFlash_B1D0D9674C747144F16383B56DFEFE02 float
---@field Timeline_0__Direction_B1D0D9674C747144F16383B56DFEFE02 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field Guid FGuid
---@field DisableFogVertexColor boolean
---@field LocationData UAreaName_C
---@field ProgressionLevel int32
---@field ['Player Interacting'] AFS_PlayerChar_C
---@field ['Disable Shop'] boolean
---@field GodModeOn boolean
---@field RestModeCrystalHue float
---@field ShopModeCrystalHue float
---@field LightColor FLinearColor
---@field TeleportInteractBlocked boolean
---@field RestOverlay URestOverlay_C
---@field Blargly UNiagaraComponent
---@field PlayerSnapStartLoc FTransform
---@field ShopUnlockDuck AStoneDuck_UnlockVisuals_C
---@field StartingIntensity float
---@field ThumbnailRenderer AActor
local ACheckpoint_C = {}

function ACheckpoint_C:BlockInteractOnReceivingTPPlayer() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ACheckpoint_C:BndEvt__Checkpoint_PlatformAreaSphere_K2Node_ComponentBoundEvent_0_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function ACheckpoint_C:CancelRestEnd() end

function ACheckpoint_C:DoShopUnlockProcess() end

---@param EntryPoint int32
function ACheckpoint_C:ExecuteUbergraph_Checkpoint(EntryPoint) end

function ACheckpoint_C:FadeRestVignette() end

function ACheckpoint_C:FlareUp() end

function ACheckpoint_C:FloatyGreenUI__FinishedFunc() end

function ACheckpoint_C:FloatyGreenUI__UpdateFunc() end

function ACheckpoint_C:GetAltThumbnailRenderer() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ACheckpoint_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ACheckpoint_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ACheckpoint_C:GetLocationData() end

function ACheckpoint_C:GetThumbnailRenderer() end

---@param Hue float
function ACheckpoint_C:GoIntoAltMode(Hue) end

---@param PlayerInteracting AActor
function ACheckpoint_C:Interact(PlayerInteracting) end

function ACheckpoint_C:IsRenderer() end

function ACheckpoint_C:PlayerTeleportedTo() end

function ACheckpoint_C:ReceiveBeginPlay() end

---@param Actor AActor
---@param Mode FName
function ACheckpoint_C:ReceiveTeleport(Actor, Mode) end

---@param DeltaSeconds float
function ACheckpoint_C:ReceiveTick(DeltaSeconds) end

function ACheckpoint_C:ReenterSaveMenuPostRest() end

---@param WingCrystal boolean
function ACheckpoint_C:Rest(WingCrystal) end

function ACheckpoint_C:RestFlare() end

function ACheckpoint_C:ReturnFromAltMode() end

function ACheckpoint_C:Save() end

function ACheckpoint_C:SaveFX() end

---@param DA UENVControlData_C
function ACheckpoint_C:SetAlphaFogDA(DA) end

---@param Renderer TScriptInterface<IFS_Destination>
function ACheckpoint_C:SetAltThumbnailRenderer(Renderer) end

---@param DA UENVControlData_C
function ACheckpoint_C:SetBetaFogDA(DA) end

---@param Renderer TScriptInterface<IFS_Destination>
function ACheckpoint_C:SetThumbnailRenderer(Renderer) end

function ACheckpoint_C:ShopTeleport() end

function ACheckpoint_C:Timeline_0__FinishedFunc() end

function ACheckpoint_C:Timeline_0__UpdateFunc() end

function ACheckpoint_C:Timeline_1__FinishedFunc() end

function ACheckpoint_C:Timeline_1__UpdateFunc() end

function ACheckpoint_C:Timeline_2__FinishedFunc() end

function ACheckpoint_C:Timeline_2__UpdateFunc() end

function ACheckpoint_C:Timeline_3__FinishedFunc() end

function ACheckpoint_C:Timeline_3__UpdateFunc() end

function ACheckpoint_C:Timeline_4__FinishedFunc() end

function ACheckpoint_C:Timeline_4__UpdateFunc() end

function ACheckpoint_C:Timeline_5__CrystalColorEvent__EventFunc() end

function ACheckpoint_C:Timeline_5__FinalBurst__EventFunc() end

function ACheckpoint_C:Timeline_5__FinishedFunc() end

function ACheckpoint_C:Timeline_5__SpawnFX__EventFunc() end

function ACheckpoint_C:Timeline_5__UpdateFunc() end

function ACheckpoint_C:Timeline_6__FinishedFunc() end

function ACheckpoint_C:Timeline_6__UpdateFunc() end

function ACheckpoint_C:UnfadeRestVignette() end

function ACheckpoint_C:UnlockShopPromptClosed() end

function ACheckpoint_C:UpdateFogDAValues() end

function ACheckpoint_C:UpdateProgressionLevel() end

function ACheckpoint_C:UpdateTeleportTransform() end

function ACheckpoint_C:UserConstructionScript() end

function ACheckpoint_C:WingCrystaled() end

ACheckpoint_C['Refresh Area Lists'] = function(self) end

ACheckpoint_C['Refresh Player'] = function(self) end

ACheckpoint_C['Write Save Metadata'] = function(self) end
