---@meta

---@class AActivatableSound_C : AAmbientSound
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Activation Stops Sound'] boolean
---@field FadeDuration float
---@field stopped boolean
local AActivatableSound_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AActivatableSound_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AActivatableSound_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AActivatableSound_C:ExecuteUbergraph_ActivatableSound(EntryPoint) end

function AActivatableSound_C:ReceiveBeginPlay() end

function AActivatableSound_C:UserConstructionScript() end
