---@meta

---@class AOW_ElecNode_Connector_Base_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OwningNetwork AElecNodeNetwork_C
local AOW_ElecNode_Connector_Base_C = {}

---@param EntryPoint int32
function AOW_ElecNode_Connector_Base_C:ExecuteUbergraph_OW_ElecNode_Connector_Base(EntryPoint) end

---@param Network AElecNodeNetwork_C
function AOW_ElecNode_Connector_Base_C:GetOwningNetwork(Network) end

---@param Network AElecNodeNetwork_C
function AOW_ElecNode_Connector_Base_C:SetOwningNetwork(Network) end
