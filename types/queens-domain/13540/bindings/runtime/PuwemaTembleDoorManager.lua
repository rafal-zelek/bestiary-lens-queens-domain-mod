---@meta

---@class APuwemaTembleDoorManager_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WorldEventReceiver UWorldEventReceiver_C
---@field DefaultSceneRoot USceneComponent
---@field Door APT_Door_C
---@field RuneActivationsNSD FName
---@field Torches TArray<Awallsconce_Sipeha_BP_C>
local APuwemaTembleDoorManager_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function APuwemaTembleDoorManager_C:Activate(ActivateByLoad, ActorThatTriggered) end

function APuwemaTembleDoorManager_C:BndEvt__PuwemaTembleDoorManager_WorldEventReceiver_K2Node_ComponentBoundEvent_0_OnWorldStateChanged__DelegateSignature() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function APuwemaTembleDoorManager_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function APuwemaTembleDoorManager_C:ExecuteUbergraph_PuwemaTembleDoorManager(EntryPoint) end

function APuwemaTembleDoorManager_C:ReceiveBeginPlay() end
