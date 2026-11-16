---@meta

---@class AActivatableNamedSaveDataSetter_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field NSDs TMap<FName, FNamedSaveDataSetter_Config>
local AActivatableNamedSaveDataSetter_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AActivatableNamedSaveDataSetter_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AActivatableNamedSaveDataSetter_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AActivatableNamedSaveDataSetter_C:ExecuteUbergraph_ActivatableNamedSaveDataSetter(EntryPoint) end
