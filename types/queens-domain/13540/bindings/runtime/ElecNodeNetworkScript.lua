---@meta

---@class UElecNodeNetworkScript_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PrimaryNode AOW_ElecNode_BP_C
---@field AllNodes TSet<AOW_ElecNode_BP_C>
---@field AllActive FElecNodeNetworkScript_CAllActive
---@field ParentNetwork UElecNodeNetworkScript_C
---@field Links TSet<AOW_ElecLink_BP_C>
---@field IsParentNetworkScript boolean
local UElecNodeNetworkScript_C = {}

function UElecNodeNetworkScript_C:AllActive__DelegateSignature() end

function UElecNodeNetworkScript_C:AllBecameActive() end

function UElecNodeNetworkScript_C:CheckAllActive() end

function UElecNodeNetworkScript_C:CollectLinks() end

---@param EntryPoint int32
function UElecNodeNetworkScript_C:ExecuteUbergraph_ElecNodeNetworkScript(EntryPoint) end

---@param Input_Node AOW_ElecNode_BP_C
function UElecNodeNetworkScript_C:IterateNode(Input_Node) end

function UElecNodeNetworkScript_C:ProcessNetwork() end

function UElecNodeNetworkScript_C:ReceiveBeginPlay() end

---@param ToggledOn boolean
---@param NewParam boolean
function UElecNodeNetworkScript_C:RefreshAllNodes(ToggledOn, NewParam) end
