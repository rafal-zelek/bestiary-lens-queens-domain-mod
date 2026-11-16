---@meta

---@class ASwamp_FogCard_Base_C : ACloud0_FogCard_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NSD_ActorHider UNSD_ActorHider_C
---@field ['NSD to Track'] FName
---@field animopaictystarty float
local ASwamp_FogCard_Base_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASwamp_FogCard_Base_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ASwamp_FogCard_Base_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ASwamp_FogCard_Base_C:ExecuteUbergraph_Swamp_FogCard_Base(EntryPoint) end

function ASwamp_FogCard_Base_C:UserConstructionScript() end
