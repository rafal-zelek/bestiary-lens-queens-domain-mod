---@meta

---@class AZweihander_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field Mesh UStaticMeshComponent
---@field Flash_NewTrack_0_4E46819E4BA9E9B36972E6BE845B10D9 float
---@field Flash__Direction_4E46819E4BA9E9B36972E6BE845B10D9 ETimelineDirection::Type
---@field Flash UTimelineComponent
local AZweihander_WeaponVisuals_C = {}

---@param EntryPoint int32
function AZweihander_WeaponVisuals_C:ExecuteUbergraph_Zweihander_WeaponVisuals(EntryPoint) end

function AZweihander_WeaponVisuals_C:Flash__FinishedFunc() end

function AZweihander_WeaponVisuals_C:Flash__UpdateFunc() end

---@param DeltaSeconds float
function AZweihander_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
