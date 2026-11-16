---@meta

---@class IActivatable_C : IInterface
local IActivatable_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function IActivatable_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function IActivatable_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end
