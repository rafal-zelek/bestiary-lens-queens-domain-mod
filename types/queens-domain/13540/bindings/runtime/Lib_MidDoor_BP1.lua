---@meta

---@class ALib_MidDoor_BP1_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Lib_FrontDoor_GemGlow2 UNiagaraComponent
---@field Lib_FrontDoor_GemGlow1 UNiagaraComponent
---@field Lib_FrontDoor_GemGlow3 UNiagaraComponent
---@field Gem2 UStaticMeshComponent
---@field Gem1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_F7E555624C871375467E2D8A6CC7B3D8 float
---@field OpenDOors__Direction_F7E555624C871375467E2D8A6CC7B3D8 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field StartGem2_NewTrack_0_4F25D1CB4430EB86C0E10D815B4A7719 float
---@field StartGem2__Direction_4F25D1CB4430EB86C0E10D815B4A7719 ETimelineDirection::Type
---@field StartGem2 UTimelineComponent
---@field StartGem1_NewTrack_0_104B46174799FC24043D2DB634BD05BB float
---@field StartGem1__Direction_104B46174799FC24043D2DB634BD05BB ETimelineDirection::Type
---@field StartGem1 UTimelineComponent
---@field Unlocked boolean
---@field LeftDoorYaw float
---@field RightDoorYaw float
---@field Lock1Open boolean
---@field Lock2Open boolean
---@field Selection int32
local ALib_MidDoor_BP1_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALib_MidDoor_BP1_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ALib_MidDoor_BP1_C:ExecuteUbergraph_Lib_MidDoor_BP1(EntryPoint) end

---@param PlayerInteracting AActor
function ALib_MidDoor_BP1_C:Interact(PlayerInteracting) end

function ALib_MidDoor_BP1_C:OpenDOors__FinishedFunc() end

function ALib_MidDoor_BP1_C:OpenDOors__UpdateFunc() end

function ALib_MidDoor_BP1_C:OpenDoor() end

function ALib_MidDoor_BP1_C:SetToOpenState() end

function ALib_MidDoor_BP1_C:StartGem1__FinishedFunc() end

function ALib_MidDoor_BP1_C:StartGem1__UpdateFunc() end

function ALib_MidDoor_BP1_C:StartGem2__FinishedFunc() end

function ALib_MidDoor_BP1_C:StartGem2__UpdateFunc() end

function ALib_MidDoor_BP1_C:UpdateFogDAValues() end
