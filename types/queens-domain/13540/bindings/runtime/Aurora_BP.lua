---@meta

---@class AAurora_BP_C : AStaticMeshActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NSD_ActorHider UNSD_ActorHider_C
---@field Opacity float
---@field ['NSD to Track'] FName
local AAurora_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AAurora_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AAurora_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AAurora_BP_C:ExecuteUbergraph_Aurora_BP(EntryPoint) end

function AAurora_BP_C:UserConstructionScript() end
