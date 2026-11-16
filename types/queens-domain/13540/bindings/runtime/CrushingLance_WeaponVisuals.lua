---@meta

---@class ACrushingLance_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Lance_CharFX UNiagaraComponent
---@field Mesh UStaticMeshComponent
---@field SpinSpeedControl_SpinSpeed_297AD22040452BA830886BA7663BA8C8 float
---@field SpinSpeedControl__Direction_297AD22040452BA830886BA7663BA8C8 ETimelineDirection::Type
---@field SpinSpeedControl UTimelineComponent
---@field CurrentSpinSpeed float
---@field SpinAccumulation float
---@field DisableControl2 boolean
---@field MaxSpinSpeed float
local ACrushingLance_WeaponVisuals_C = {}

---@param EntryPoint int32
function ACrushingLance_WeaponVisuals_C:ExecuteUbergraph_CrushingLance_WeaponVisuals(EntryPoint) end

---@param DeltaSeconds float
function ACrushingLance_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end

function ACrushingLance_WeaponVisuals_C:SpinSpeedControl__FinishedFunc() end

function ACrushingLance_WeaponVisuals_C:SpinSpeedControl__UpdateFunc() end

---@param SpinUpRate float
function ACrushingLance_WeaponVisuals_C:StartSpinning(SpinUpRate) end

---@param NewRate float
function ACrushingLance_WeaponVisuals_C:StopSpinning(NewRate) end
