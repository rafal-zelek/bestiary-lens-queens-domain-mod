---@meta

---@class AWallHint_Base_BP_C : AStaticMeshActor
---@field UberGraphFrame FPointerToUberGraphFrame
local AWallHint_Base_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AWallHint_Base_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AWallHint_Base_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AWallHint_Base_BP_C:ExecuteUbergraph_WallHint_Base_BP(EntryPoint) end
