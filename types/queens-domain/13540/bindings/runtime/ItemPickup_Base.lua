---@meta

---@class AItemPickup_Base_C : ACoreItemPickupActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PickupAnimPivot USceneComponent
---@field ItemPickupAnimationComp UItemPickupAnimationComp_C
---@field PickupVFX UStaticMeshComponent
---@field PickupGraphics UStaticMeshComponent
---@field InteractCollision USphereComponent
---@field PutAwayItemAnim_PutAway_3628BF2442D758DA56CD56AD0347ABBB float
---@field PutAwayItemAnim__Direction_3628BF2442D758DA56CD56AD0347ABBB ETimelineDirection::Type
---@field PutAwayItemAnim UTimelineComponent
---@field waterbob_bob_36A4A17C4CE0D46C5654FCB4B9A9BCB5 float
---@field waterbob__Direction_36A4A17C4CE0D46C5654FCB4B9A9BCB5 ETimelineDirection::Type
---@field waterbob UTimelineComponent
---@field BounceTL_bounce_C83CBDB3418E5A41E119C0A3C6070800 float
---@field BounceTL__Direction_C83CBDB3418E5A41E119C0A3C6070800 ETimelineDirection::Type
---@field BounceTL UTimelineComponent
---@field PickupItemAnim_PutAway_09DF78F447CD72638BDECDBA1CF0695B float
---@field PickupItemAnim_PutInFront_09DF78F447CD72638BDECDBA1CF0695B float
---@field PickupItemAnim__Direction_09DF78F447CD72638BDECDBA1CF0695B ETimelineDirection::Type
---@field PickupItemAnim UTimelineComponent
---@field PickupLocation EFS_PickupLocation
---@field PickupDifficulty EFS_PickupDifficulty
---@field ItemsToGrant TMap<TSoftObjectPtr<UFS_ItemData_C>, int32>
---@field PickupConfigOverride TSoftObjectPtr<UFS_ItemData_C>
---@field ActorsToActivateOnPickup TArray<TScriptInterface<IActivatable_C>>
---@field PickupAnimStartState FTransform
---@field PickupDesiredScreenSize FVector
---@field DesiredPickupRotation FRotator
---@field DesiredPickupScreenPosition FVector
---@field DesiredPickupEndingScreenPosition FVector
---@field PickedUp FItemPickup_Base_CPickedUp
---@field PickupBoundOrigin FVector
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field AnimRateMultiplier float
---@field RequireActivation boolean
---@field Activated boolean
---@field DefaultItemSound USoundBase
---@field DropPosStart FVector
---@field ['Show Pickup VFX'] boolean
---@field Config UPlayerBalance_C
---@field ItemPickupSizeMut float
---@field ['Pickup Spline'] AItemPutAwayCurve_C
---@field DisableAutomaticPickupSounds boolean
---@field LastFramePos FVector
---@field GravityDropStartTime float
---@field ['Cull Distance'] float
---@field PickUpEnded FItemPickup_Base_CPickUpEnded
---@field GravityItemTickIsFloating boolean
---@field GravityItemTickFloatDir FVector
---@field WaterRipples UNiagaraComponent
---@field ['State Does Not Manage Whole Actor'] boolean
---@field ExtraFallGravityForce FVector
local AItemPickup_Base_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AItemPickup_Base_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AItemPickup_Base_C:BndEvt__ItemPickup_Base_ItemPickupAnimationComp_K2Node_ComponentBoundEvent_0_Grant__DelegateSignature() end

function AItemPickup_Base_C:BndEvt__ItemPickup_Base_ItemPickupAnimationComp_K2Node_ComponentBoundEvent_1_EnableInput__DelegateSignature() end

function AItemPickup_Base_C:BndEvt__ItemPickup_Base_ItemPickupAnimationComp_K2Node_ComponentBoundEvent_2_DisableInput__DelegateSignature() end

function AItemPickup_Base_C:BndEvt__ItemPickup_Base_ItemPickupAnimationComp_K2Node_ComponentBoundEvent_3_Done__DelegateSignature() end

function AItemPickup_Base_C:BounceTL__FinishedFunc() end

function AItemPickup_Base_C:BounceTL__UpdateFunc() end

function AItemPickup_Base_C:CalculatePickupPos() end

function AItemPickup_Base_C:ConfigureVFX() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AItemPickup_Base_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function AItemPickup_Base_C:DeleteDropData() end

function AItemPickup_Base_C:DoBounceAnim() end

---@param IgnoreActors TArray<AActor>
function AItemPickup_Base_C:DoGravityDrop(IgnoreActors) end

---@param Ignores TArray<AActor>
function AItemPickup_Base_C:DoItemGravityDropTick(Ignores) end

function AItemPickup_Base_C:DoItemPickupPause() end

function AItemPickup_Base_C:DropMakeUnstable() end

function AItemPickup_Base_C:EndGravityDrop() end

function AItemPickup_Base_C:EndItemPickupPause() end

---@param EntryPoint int32
function AItemPickup_Base_C:ExecuteUbergraph_ItemPickup_Base(EntryPoint) end

function AItemPickup_Base_C:ForceRefreshInWater() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AItemPickup_Base_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AItemPickup_Base_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param ItemData UFS_ItemData_C
function AItemPickup_Base_C:GetPickupConfigData(ItemData) end

function AItemPickup_Base_C:GetRealDesiredScreenSize() end

---@param Rest FTransform
---@param PutAway FTransform
function AItemPickup_Base_C:GetRestAndPutAwayPositions(Rest, PutAway) end

---@param Time float
function AItemPickup_Base_C:GetRestToPutAwayAnim(Time) end

---@param GrantedItems TMap<TSoftObjectPtr<UFS_Item>, int32>
function AItemPickup_Base_C:GetSavableGrantedItems(GrantedItems) end

function AItemPickup_Base_C:GrantItemsAndActivate() end

---@param Has boolean
function AItemPickup_Base_C:HasValidGUID(Has) end

function AItemPickup_Base_C:HideToWaitForActivation() end

---@param Key FKey
function AItemPickup_Base_C:InpActEvt_Attack_K2Node_InputActionEvent_2(Key) end

---@param Key FKey
function AItemPickup_Base_C:InpActEvt_Interact_K2Node_InputActionEvent_3(Key) end

---@param Key FKey
function AItemPickup_Base_C:InpActEvt_Jump_K2Node_InputActionEvent_1(Key) end

---@param Key FKey
function AItemPickup_Base_C:InpActEvt_Pause_K2Node_InputActionEvent_0(Key) end

---@param PlayerInteracting AActor
function AItemPickup_Base_C:Interact(PlayerInteracting) end

function AItemPickup_Base_C:PickUpEnded__DelegateSignature() end

function AItemPickup_Base_C:PickedUp__DelegateSignature() end

---@param DialoguePickup boolean
function AItemPickup_Base_C:Pickup(DialoguePickup) end

function AItemPickup_Base_C:PickupItemAnim__AllowInput__EventFunc() end

function AItemPickup_Base_C:PickupItemAnim__FinishedFunc() end

function AItemPickup_Base_C:PickupItemAnim__UpdateFunc() end

function AItemPickup_Base_C:PutAway() end

function AItemPickup_Base_C:PutAwayItemAnim__FinishedFunc() end

function AItemPickup_Base_C:PutAwayItemAnim__UpdateFunc() end

function AItemPickup_Base_C:ReceiveBeginPlay() end

function AItemPickup_Base_C:RefreshFullState() end

---@param FoundAnyWater boolean
function AItemPickup_Base_C:RefreshWaterFXType(FoundAnyWater) end

---@param Restored TMap<TSoftObjectPtr<UFS_Item>, int32>
function AItemPickup_Base_C:RestoreGrantedItemsFromSave(Restored) end

function AItemPickup_Base_C:SaveDropData() end

---@param DA UENVControlData_C
function AItemPickup_Base_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AItemPickup_Base_C:SetBetaFogDA(DA) end

function AItemPickup_Base_C:SetDropIsInWater() end

---@param AlreadyAcquired boolean
function AItemPickup_Base_C:SetState(AlreadyAcquired) end

---@param PickupAnimPivot USceneComponent
function AItemPickup_Base_C:SetUpAndGetAnimPivot(PickupAnimPivot) end

function AItemPickup_Base_C:UpdateFogDAValues() end

function AItemPickup_Base_C:UserConstructionScript() end

function AItemPickup_Base_C:cancelbounce() end

function AItemPickup_Base_C:waterbob__FinishedFunc() end

function AItemPickup_Base_C:waterbob__UpdateFunc() end

---@param Data TArray<FSavableActorState>
AItemPickup_Base_C['Restore State From Save Data'] = function(self, Data) end
