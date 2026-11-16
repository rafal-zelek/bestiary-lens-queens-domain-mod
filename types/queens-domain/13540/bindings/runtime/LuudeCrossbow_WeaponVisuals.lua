---@meta

---@class ALuudeCrossbow_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh USkeletalMeshComponent
local ALuudeCrossbow_WeaponVisuals_C = {}

---@param EntryPoint int32
function ALuudeCrossbow_WeaponVisuals_C:ExecuteUbergraph_LuudeCrossbow_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function ALuudeCrossbow_WeaponVisuals_C:GetMeshes(Meshes) end

function ALuudeCrossbow_WeaponVisuals_C:ReceiveBeginPlay() end
