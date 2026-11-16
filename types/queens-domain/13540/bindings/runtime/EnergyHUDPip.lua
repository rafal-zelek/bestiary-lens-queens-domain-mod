---@meta

---@class UEnergyHUDPip_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ErrorAnim UWidgetAnimation
---@field CellFlash UWidgetAnimation
---@field Pip UImage
---@field Cap float
local UEnergyHUDPip_C = {}

function UEnergyHUDPip_C:Construct() end

function UEnergyHUDPip_C:Error() end

---@param EntryPoint int32
function UEnergyHUDPip_C:ExecuteUbergraph_EnergyHUDPip(EntryPoint) end

---@param res float
---@param Consumed boolean
function UEnergyHUDPip_C:UpdateReservation(res, Consumed) end

---@param Fill float
---@param ConsumptionAmount float
function UEnergyHUDPip_C:UpdateState(Fill, ConsumptionAmount) end

function UEnergyHUDPip_C:WHoleCellConsumedAnim() end
