---@meta

---@class IElecStuffInterface_C : IInterface
local IElecStuffInterface_C = {}

---@param Network AElecNodeNetwork_C
function IElecStuffInterface_C:GetOwningNetwork(Network) end

---@param Network AElecNodeNetwork_C
function IElecStuffInterface_C:SetOwningNetwork(Network) end
