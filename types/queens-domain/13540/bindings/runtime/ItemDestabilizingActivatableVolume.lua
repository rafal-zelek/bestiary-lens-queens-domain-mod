---@meta

---@class AItemDestabilizingActivatableVolume_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
local AItemDestabilizingActivatableVolume_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AItemDestabilizingActivatableVolume_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AItemDestabilizingActivatableVolume_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AItemDestabilizingActivatableVolume_C:ExecuteUbergraph_ItemDestabilizingActivatableVolume(EntryPoint) end
