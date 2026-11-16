---@meta

---@class UPowerMeterLogic_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentPowerSeconds float
---@field PlayerConfig UPlayerBalance_C
---@field PlayerRef AFS_PlayerChar_C
local UPowerMeterLogic_C = {}

function UPowerMeterLogic_C:EmptyMeter() end

---@param EntryPoint int32
function UPowerMeterLogic_C:ExecuteUbergraph_PowerMeterLogic(EntryPoint) end

function UPowerMeterLogic_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UPowerMeterLogic_C:ReceiveTick(DeltaSeconds) end

---@param WeaponPowerSeconds float
---@param _ float
UPowerMeterLogic_C['Get Power % For Weapon'] = function(self, WeaponPowerSeconds, _) end
