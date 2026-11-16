---@meta

---@class AHarkLamp_WeaponVisuals_C : ATorch_WeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Harklamp_FX UStaticMeshComponent
---@field SpotLight USpotLightComponent
---@field AltFlashTL_Flare_4E8483DD47F50A3AE18C198CE1FADA36 float
---@field AltFlashTL_NewTrack_0_4E8483DD47F50A3AE18C198CE1FADA36 float
---@field AltFlashTL__Direction_4E8483DD47F50A3AE18C198CE1FADA36 ETimelineDirection::Type
---@field AltFlashTL UTimelineComponent
---@field FlashIntensity float
local AHarkLamp_WeaponVisuals_C = {}

function AHarkLamp_WeaponVisuals_C:AltFlashTL__FinishedFunc() end

function AHarkLamp_WeaponVisuals_C:AltFlashTL__UpdateFunc() end

function AHarkLamp_WeaponVisuals_C:DoAltFlash() end

---@param EntryPoint int32
function AHarkLamp_WeaponVisuals_C:ExecuteUbergraph_HarkLamp_WeaponVisuals(EntryPoint) end

function AHarkLamp_WeaponVisuals_C:ReceiveBeginPlay() end

---@param Mesh UMeshComponent
---@param ChargeVal float
function AHarkLamp_WeaponVisuals_C:SetChargeParamOnWeaponMeshMat(Mesh, ChargeVal) end
