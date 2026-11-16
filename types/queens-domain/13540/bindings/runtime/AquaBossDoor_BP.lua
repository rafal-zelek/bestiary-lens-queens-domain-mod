---@meta

---@class AAquaBossDoor_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TriggerBox UBoxComponent
---@field RibberMinibossCrownStone UStaticMeshComponent
---@field FIshmaner_Crown_Stone_SM UStaticMeshComponent
---@field Cocker_Necklace_Stone UStaticMeshComponent
---@field InteractBox UBoxComponent
---@field AquaBossDoorDust UNiagaraComponent
---@field soundsource USceneComponent
---@field FinalDoorPos USceneComponent
---@field FishmanBust_Break USkeletalMeshComponent
---@field CockerBust_Break USkeletalMeshComponent
---@field Ribberbust_Break USkeletalMeshComponent
---@field AquaBossDoor_FishmanBust_SM UStaticMeshComponent
---@field AquaBossDoor_CockerBust_SM UStaticMeshComponent
---@field AquaBossDoor_RibberBust_SM UStaticMeshComponent
---@field AquaBossDoor_00_SM UStaticMeshComponent
---@field Timeline_1_CockerFade_04AE663149CFAC05701F1BA2E4AE432A float
---@field Timeline_1__Direction_04AE663149CFAC05701F1BA2E4AE432A ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_CockerFade_81A8E8B447B7C3174808C1802BA53FDE float
---@field Timeline_0__Direction_81A8E8B447B7C3174808C1802BA53FDE ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field FadeOutCocker_CockerFade_F9DF4E074890FEF3B991748675D8006C float
---@field FadeOutCocker__Direction_F9DF4E074890FEF3B991748675D8006C ETimelineDirection::Type
---@field FadeOutCocker UTimelineComponent
---@field Open_NewTrack_0_B63578124422BCD61F17D99BC94EE97E float
---@field Open__Direction_B63578124422BCD61F17D99BC94EE97E ETimelineDirection::Type
---@field Open UTimelineComponent
---@field CockerBroke boolean
---@field RibberBroke boolean
---@field FishmanBroke boolean
---@field DoorOpen boolean
---@field StartingDoorPos FVector
---@field OpeningSoundComp UAudioComponent
---@field OpenSound USoundBase
---@field AlphaFog UENVControlData_C
---@field CurrentInteractAnythingBroke boolean
---@field InteractFailedText FText
local AAquaBossDoor_BP_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AAquaBossDoor_BP_C:BndEvt__AquaBossDoor_BP_TriggerBox_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param EntryPoint int32
function AAquaBossDoor_BP_C:ExecuteUbergraph_AquaBossDoor_BP(EntryPoint) end

function AAquaBossDoor_BP_C:FadeOutCocker__FinishedFunc() end

function AAquaBossDoor_BP_C:FadeOutCocker__UpdateFunc() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AAquaBossDoor_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AAquaBossDoor_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AAquaBossDoor_BP_C:Interact(PlayerInteracting) end

function AAquaBossDoor_BP_C:Open__FinishedFunc() end

function AAquaBossDoor_BP_C:Open__UpdateFunc() end

function AAquaBossDoor_BP_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function AAquaBossDoor_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AAquaBossDoor_BP_C:SetBetaFogDA(DA) end

function AAquaBossDoor_BP_C:Timeline_0__FinishedFunc() end

function AAquaBossDoor_BP_C:Timeline_0__UpdateFunc() end

function AAquaBossDoor_BP_C:Timeline_1__FinishedFunc() end

function AAquaBossDoor_BP_C:Timeline_1__UpdateFunc() end

function AAquaBossDoor_BP_C:UpdateFogDAValues() end

function AAquaBossDoor_BP_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AAquaBossDoor_BP_C['Restore State From Save Data'] = function(self, Data) end
