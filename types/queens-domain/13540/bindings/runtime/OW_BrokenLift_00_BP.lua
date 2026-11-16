---@meta

---@class AOW_BrokenLift_00_BP_C : AElevator_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field splash UNiagaraComponent
---@field MachineSparks UNiagaraComponent
---@field OW_EntryTunnel_Platform_00SM UStaticMeshComponent
local AOW_BrokenLift_00_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AOW_BrokenLift_00_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AOW_BrokenLift_00_BP_C:ExecuteUbergraph_OW_BrokenLift_00_BP(EntryPoint) end

function AOW_BrokenLift_00_BP_C:ReachedEnd() end

function AOW_BrokenLift_00_BP_C:ReachedPoint() end
