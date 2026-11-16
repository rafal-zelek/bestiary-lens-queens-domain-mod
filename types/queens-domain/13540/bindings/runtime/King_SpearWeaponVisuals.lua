---@meta

---@class AKing_SpearWeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Model UStaticMeshComponent
---@field FadeIn_NewTrack_0_217F139349F57A8ED8059BACE8F762D0 float
---@field FadeIn__Direction_217F139349F57A8ED8059BACE8F762D0 ETimelineDirection::Type
---@field FadeIn UTimelineComponent
local AKing_SpearWeaponVisuals_C = {}

---@param EntryPoint int32
function AKing_SpearWeaponVisuals_C:ExecuteUbergraph_King_SpearWeaponVisuals(EntryPoint) end

function AKing_SpearWeaponVisuals_C:FadeIn__FinishedFunc() end

function AKing_SpearWeaponVisuals_C:FadeIn__UpdateFunc() end

---@param Meshes TArray<UMeshComponent>
function AKing_SpearWeaponVisuals_C:GetMeshes(Meshes) end

function AKing_SpearWeaponVisuals_C:SpearFadeToHidden() end

function AKing_SpearWeaponVisuals_C:SpearFadeToVisible() end
