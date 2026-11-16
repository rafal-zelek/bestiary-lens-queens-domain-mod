---@meta

---@class AScytheWeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Model UStaticMeshComponent
---@field FadeIn_NewTrack_0_8E872CF6455DEC69D5D95387A3D2397F float
---@field FadeIn__Direction_8E872CF6455DEC69D5D95387A3D2397F ETimelineDirection::Type
---@field FadeIn UTimelineComponent
local AScytheWeaponVisuals_C = {}

---@param EntryPoint int32
function AScytheWeaponVisuals_C:ExecuteUbergraph_ScytheWeaponVisuals(EntryPoint) end

function AScytheWeaponVisuals_C:FadeIn__FinishedFunc() end

function AScytheWeaponVisuals_C:FadeIn__UpdateFunc() end

---@param Meshes TArray<UMeshComponent>
function AScytheWeaponVisuals_C:GetMeshes(Meshes) end

---@param DeltaSeconds float
function AScytheWeaponVisuals_C:ReceiveTick(DeltaSeconds) end

function AScytheWeaponVisuals_C:ScytheFadeToHidden() end

function AScytheWeaponVisuals_C:ScytheFadeToVisible() end
