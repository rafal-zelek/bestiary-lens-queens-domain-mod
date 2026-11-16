---@meta

---@class AAQR_KeyRecepticle_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemPickupAnimationComp UItemPickupAnimationComp_C
---@field KeyMesh UStaticMeshComponent
---@field InteractBox UBoxComponent
---@field ReceptacleModel UStaticMeshComponent
---@field PutAwayAnim_PutAway_248F3035486C6FE3E26EAB8D19DF5151 float
---@field PutAwayAnim_PutInFront_248F3035486C6FE3E26EAB8D19DF5151 float
---@field PutAwayAnim__Direction_248F3035486C6FE3E26EAB8D19DF5151 ETimelineDirection::Type
---@field PutAwayAnim UTimelineComponent
---@field PickupAnim_PutAway_C2A3818E4274609F61CB148C87420F9F float
---@field PickupAnim_PutInFront_C2A3818E4274609F61CB148C87420F9F float
---@field PickupAnim__Direction_C2A3818E4274609F61CB148C87420F9F ETimelineDirection::Type
---@field PickUpAnim UTimelineComponent
---@field HasItem boolean
---@field ValidKeys TSet<UFS_ItemData_C>
---@field ['Key Tags to Show'] TSet<FName>
---@field RequiresSpecifiedKey boolean
---@field SpecifiedKeys TSet<UFS_ItemData_C>
---@field ['Player Interacting'] AFS_PlayerChar_C
---@field ActivationTarget TArray<TScriptInterface<IActivatable_C>>
---@field AlphaFog UENVControlData_C
---@field DesiredPickupRotation FRotator
---@field DesiredPickupEndingScreenPosition FVector
---@field DesiredPickupScreenPosition FVector
---@field AnimRateMultiplier float
---@field PickupDesiredScreenSize float
---@field PickupAnimStartState FTransform
---@field KeyTypeToMaterial TMap<UFS_ItemData_C, UMaterialInterface>
---@field ContainedKey UFS_ItemData_C
---@field ['Pickup Spline'] AItemPutAwayCurve_C
---@field ItemPickupSizeMut float
---@field PickupAnimItem UFS_ItemData_C
---@field RootPos FTransform
---@field InsertAnimStartTransform FTransform
---@field KeyScale FVector
---@field InteractIsDisabled boolean
---@field InsertSound USoundCue
---@field RemoveSound USoundCue
---@field NextInteractAllowedTime float
local AAQR_KeyRecepticle_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AAQR_KeyRecepticle_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param PutInFront float
---@param PutAway float
function AAQR_KeyRecepticle_BP_C:Animation(PutInFront, PutAway) end

function AAQR_KeyRecepticle_BP_C:BlockInteraction() end

function AAQR_KeyRecepticle_BP_C:BndEvt__AQR_KeyRecepticle_BP_ItemPickupAnimationComp_K2Node_ComponentBoundEvent_0_Grant__DelegateSignature() end

function AAQR_KeyRecepticle_BP_C:BndEvt__AQR_KeyRecepticle_BP_ItemPickupAnimationComp_K2Node_ComponentBoundEvent_1_EnableInput__DelegateSignature() end

function AAQR_KeyRecepticle_BP_C:BndEvt__AQR_KeyRecepticle_BP_ItemPickupAnimationComp_K2Node_ComponentBoundEvent_2_DisableInput__DelegateSignature() end

function AAQR_KeyRecepticle_BP_C:BndEvt__AQR_KeyRecepticle_BP_ItemPickupAnimationComp_K2Node_ComponentBoundEvent_3_Done__DelegateSignature() end

function AAQR_KeyRecepticle_BP_C:CalculatePickupDstPos() end

function AAQR_KeyRecepticle_BP_C:CheckUnlockConditions() end

---@param ByLoad boolean
function AAQR_KeyRecepticle_BP_C:CorrectKeyInserted(ByLoad) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AAQR_KeyRecepticle_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function AAQR_KeyRecepticle_BP_C:DoItemPickupPause() end

function AAQR_KeyRecepticle_BP_C:EndItemPickupPause() end

---@param EntryPoint int32
function AAQR_KeyRecepticle_BP_C:ExecuteUbergraph_AQR_KeyRecepticle_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AAQR_KeyRecepticle_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AAQR_KeyRecepticle_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AAQR_KeyRecepticle_BP_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

function AAQR_KeyRecepticle_BP_C:GetRealDesiredScreenSize() end

---@param Rest FTransform
---@param PutAway FTransform
function AAQR_KeyRecepticle_BP_C:GetRestAndPutAwayPositions(Rest, PutAway) end

---@param Time float
function AAQR_KeyRecepticle_BP_C:GetRestToPutAwayAnim(Time) end

---@param Key FKey
function AAQR_KeyRecepticle_BP_C:InpActEvt_Attack_K2Node_InputActionEvent_2(Key) end

---@param Key FKey
function AAQR_KeyRecepticle_BP_C:InpActEvt_Interact_K2Node_InputActionEvent_3(Key) end

---@param Key FKey
function AAQR_KeyRecepticle_BP_C:InpActEvt_Jump_K2Node_InputActionEvent_1(Key) end

---@param Key FKey
function AAQR_KeyRecepticle_BP_C:InpActEvt_Pause_K2Node_InputActionEvent_0(Key) end

---@param PlayerInteracting AActor
function AAQR_KeyRecepticle_BP_C:Interact(PlayerInteracting) end

function AAQR_KeyRecepticle_BP_C:KeyInserted() end

function AAQR_KeyRecepticle_BP_C:KeyRemoved() end

function AAQR_KeyRecepticle_BP_C:PickUpAnim__FinishedFunc() end

function AAQR_KeyRecepticle_BP_C:PickUpAnim__UpdateFunc() end

function AAQR_KeyRecepticle_BP_C:Pickup() end

function AAQR_KeyRecepticle_BP_C:PickupAnim__enableinput__EventFunc() end

function AAQR_KeyRecepticle_BP_C:PutAway() end

function AAQR_KeyRecepticle_BP_C:PutAwayAnim__FinishedFunc() end

function AAQR_KeyRecepticle_BP_C:PutAwayAnim__UpdateFunc() end

function AAQR_KeyRecepticle_BP_C:ReceiveBeginPlay() end

---@param Key UFS_ItemData_C
function AAQR_KeyRecepticle_BP_C:RefreshKeyMaterialFromItem(Key) end

function AAQR_KeyRecepticle_BP_C:RemoveKey() end

function AAQR_KeyRecepticle_BP_C:ResetKeyScale() end

function AAQR_KeyRecepticle_BP_C:RestoreItems() end

---@param DA UENVControlData_C
function AAQR_KeyRecepticle_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AAQR_KeyRecepticle_BP_C:SetBetaFogDA(DA) end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function AAQR_KeyRecepticle_BP_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function AAQR_KeyRecepticle_BP_C:UpdateFogDAValues() end

function AAQR_KeyRecepticle_BP_C:UserConstructionScript() end

AAQR_KeyRecepticle_BP_C['Grant Key Item'] = function(self) end

---@param Items TArray<UFS_ItemData_C>
AAQR_KeyRecepticle_BP_C['Restore Item State From Save Data'] = function(self, Items) end

---@param Data TArray<FSavableActorState>
AAQR_KeyRecepticle_BP_C['Restore State From Save Data'] = function(self, Data) end

---@param Index int32
---@param Data int32
AAQR_KeyRecepticle_BP_C['Save Data Index to World Save'] = function(self, Index, Data) end
