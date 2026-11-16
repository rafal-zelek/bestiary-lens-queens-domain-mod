---@meta

---@class ASpearWeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Model UStaticMeshComponent
---@field FadeIn_NewTrack_0_8028BC8A40B197BDB53080A8F95D7595 float
---@field FadeIn__Direction_8028BC8A40B197BDB53080A8F95D7595 ETimelineDirection::Type
---@field FadeIn UTimelineComponent
local ASpearWeaponVisuals_C = {}

---@param EntryPoint int32
function ASpearWeaponVisuals_C:ExecuteUbergraph_SpearWeaponVisuals(EntryPoint) end

function ASpearWeaponVisuals_C:FadeIn__FinishedFunc() end

function ASpearWeaponVisuals_C:FadeIn__UpdateFunc() end

---@param Meshes TArray<UMeshComponent>
function ASpearWeaponVisuals_C:GetMeshes(Meshes) end

function ASpearWeaponVisuals_C:SpearFadeToHidden() end

function ASpearWeaponVisuals_C:SpearFadeToVisible() end
