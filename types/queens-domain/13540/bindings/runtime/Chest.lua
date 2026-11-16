---@meta

---@class AChest_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_ChestCharm_SM UStaticMeshComponent
---@field LidCollider UBoxComponent
---@field KeyModel UVisualKeyComponent_C
---@field NavBlocker UBoxComponent
---@field InteractBox UBoxComponent
---@field Lid UStaticMeshComponent
---@field Box UStaticMeshComponent
---@field OpenLid_Open_47308F4041FC3318C0825CB0C7D9946C float
---@field OpenLid__Direction_47308F4041FC3318C0825CB0C7D9946C ETimelineDirection::Type
---@field OpenLid UTimelineComponent
---@field ActorsToActivateOnOpen TArray<TScriptInterface<IActivatable_C>>
---@field Opened FChest_COpened
---@field LidOpenAngle float
---@field AlwaysOpened boolean
---@field PreviewOpen boolean
---@field RequiredKey UFS_ItemData_C
---@field ['Key Tags to Show'] TSet<FName>
---@field AlphaFog UENVControlData_C
---@field BetaFog UENVControlData_C
---@field ConsumeKey boolean
---@field DisableFogVertexColor boolean
---@field DoesNotCountForAchievement boolean
---@field OpenSound USoundCue
---@field UnlockSound USoundBase
local AChest_C = {}

function AChest_C:BndEvt__Chest_KeyModel_K2Node_ComponentBoundEvent_0_UnlockSound__DelegateSignature() end

---@param EntryPoint int32
function AChest_C:ExecuteUbergraph_Chest(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AChest_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AChest_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AChest_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

function AChest_C:InsertKey() end

---@param PlayerInteracting AActor
function AChest_C:Interact(PlayerInteracting) end

function AChest_C:Open() end

function AChest_C:OpenLid__FinishedFunc() end

function AChest_C:OpenLid__UpdateFunc() end

function AChest_C:Opened__DelegateSignature() end

function AChest_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function AChest_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AChest_C:SetBetaFogDA(DA) end

function AChest_C:SetToFinalState() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function AChest_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function AChest_C:UpdateFogDAValues() end

function AChest_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AChest_C['Restore State From Save Data'] = function(self, Data) end
