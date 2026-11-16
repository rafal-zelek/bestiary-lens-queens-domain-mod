---@meta

---@class IChargeWeaponInterface_C : IInterface
local IChargeWeaponInterface_C = {}

---@param Progress float
---@param Charging boolean
---@param Valid boolean
function IChargeWeaponInterface_C:GetChargeProgressClamped(Progress, Charging, Valid) end
