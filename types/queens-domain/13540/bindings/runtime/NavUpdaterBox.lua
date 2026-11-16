---@meta

---@class ANavUpdaterBox_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
local ANavUpdaterBox_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ANavUpdaterBox_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ANavUpdaterBox_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ANavUpdaterBox_C:ExecuteUbergraph_NavUpdaterBox(EntryPoint) end

function ANavUpdaterBox_C:UpdateNow() end

function ANavUpdaterBox_C:UserConstructionScript() end
