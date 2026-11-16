---@meta

---@class ALib_FrontDoor_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Lib_FrontDoor_GemGlow2 UNiagaraComponent
---@field Lib_FrontDoor_GemGlow1 UNiagaraComponent
---@field Lib_FrontDoor_GemGlow3 UNiagaraComponent
---@field Gem2 UStaticMeshComponent
---@field Gem1 UStaticMeshComponent
---@field Gem3 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_1ACC7A684094EA6232E8DFB08C589D5E float
---@field OpenDOors__Direction_1ACC7A684094EA6232E8DFB08C589D5E ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field StartGem3_NewTrack_0_D5591A1A453EC8DCD6743D9002C408F7 float
---@field StartGem3__Direction_D5591A1A453EC8DCD6743D9002C408F7 ETimelineDirection::Type
---@field StartGem3 UTimelineComponent
---@field StartGem2_NewTrack_0_F434126540B6D1004E431AADE2F37328 float
---@field StartGem2__Direction_F434126540B6D1004E431AADE2F37328 ETimelineDirection::Type
---@field StartGem2 UTimelineComponent
---@field StartGem1_NewTrack_0_135411F447740E5DD0BF489E09FA0AF1 float
---@field StartGem1__Direction_135411F447740E5DD0BF489E09FA0AF1 ETimelineDirection::Type
---@field StartGem1 UTimelineComponent
---@field Unlocked boolean
---@field LeftDoorYaw float
---@field RightDoorYaw float
---@field Bell TScriptInterface<IActivatable_C>
local ALib_FrontDoor_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALib_FrontDoor_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Selection int32
---@param By_Load boolean
function ALib_FrontDoor_BP_C:ActivateGem(Selection, By_Load) end

function ALib_FrontDoor_BP_C:BndEvt__Lib_FrontDoor_BP_SaveHelper_K2Node_ComponentBoundEvent_0_SaveDataLoaded__DelegateSignature() end

---@param EntryPoint int32
function ALib_FrontDoor_BP_C:ExecuteUbergraph_Lib_FrontDoor_BP(EntryPoint) end

---@param PlayerInteracting AActor
function ALib_FrontDoor_BP_C:Interact(PlayerInteracting) end

function ALib_FrontDoor_BP_C:OpenDOors__FinishedFunc() end

function ALib_FrontDoor_BP_C:OpenDOors__UpdateFunc() end

function ALib_FrontDoor_BP_C:OpenDoor() end

function ALib_FrontDoor_BP_C:ReceiveBeginPlay() end

function ALib_FrontDoor_BP_C:RestoreStateFromSave() end

function ALib_FrontDoor_BP_C:SetToOpenState() end

function ALib_FrontDoor_BP_C:StartGem1__FinishedFunc() end

function ALib_FrontDoor_BP_C:StartGem1__UpdateFunc() end

function ALib_FrontDoor_BP_C:StartGem2__FinishedFunc() end

function ALib_FrontDoor_BP_C:StartGem2__UpdateFunc() end

function ALib_FrontDoor_BP_C:StartGem3__FinishedFunc() end

function ALib_FrontDoor_BP_C:StartGem3__UpdateFunc() end

function ALib_FrontDoor_BP_C:UpdateFogDAValues() end
