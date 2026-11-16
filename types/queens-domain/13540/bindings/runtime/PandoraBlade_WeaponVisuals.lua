---@meta

---@class APandoraBlade_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh UStaticMeshComponent
local APandoraBlade_WeaponVisuals_C = {}

---@param EntryPoint int32
function APandoraBlade_WeaponVisuals_C:ExecuteUbergraph_PandoraBlade_WeaponVisuals(EntryPoint) end

function APandoraBlade_WeaponVisuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function APandoraBlade_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
