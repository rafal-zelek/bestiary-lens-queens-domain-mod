---@meta

---@class AElecNodeNetwork_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ElecNodeNetworkScript UElecNodeNetworkScript_C
---@field AnyNodeInNetwork AOW_ElecNode_BP_C
---@field ActivateOnPuzzleSolve TArray<TScriptInterface<IActivatable_C>>
---@field Finished boolean
local AElecNodeNetwork_C = {}

function AElecNodeNetwork_C:BndEvt__ElecNodeNetwork_ElecNodeNetworkScript_K2Node_ComponentBoundEvent_0_AllActive__DelegateSignature() end

---@param EntryPoint int32
function AElecNodeNetwork_C:ExecuteUbergraph_ElecNodeNetwork(EntryPoint) end

function AElecNodeNetwork_C:ReceiveBeginPlay() end

function AElecNodeNetwork_C:ToggleAll() end

function AElecNodeNetwork_C:UserConstructionScript() end
