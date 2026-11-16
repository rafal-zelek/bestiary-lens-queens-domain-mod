---@meta

---@class ATridentKeyTrident_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BrokenMesh UStaticMeshComponent
---@field Scene USceneComponent
---@field Mesh UStaticMeshComponent
local ATridentKeyTrident_WeaponVisuals_C = {}

function ATridentKeyTrident_WeaponVisuals_C:DoEvolutionAnim() end

---@param EntryPoint int32
function ATridentKeyTrident_WeaponVisuals_C:ExecuteUbergraph_TridentKeyTrident_WeaponVisuals(EntryPoint) end

---@param Loc FTransform
function ATridentKeyTrident_WeaponVisuals_C:GetEVoItemSpawnLoc(Loc) end
