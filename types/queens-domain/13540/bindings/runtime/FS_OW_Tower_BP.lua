---@meta

---@class AFS_OW_Tower_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AFS_OW_Tower_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AFS_OW_Tower_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AFS_OW_Tower_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AFS_OW_Tower_BP_C:ExecuteUbergraph_FS_OW_Tower_BP(EntryPoint) end
