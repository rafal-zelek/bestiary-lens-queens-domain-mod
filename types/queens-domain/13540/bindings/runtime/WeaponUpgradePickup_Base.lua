---@meta

---@class AWeaponUpgradePickup_Base_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_SciCharm_SM UStaticMeshComponent
local AWeaponUpgradePickup_Base_C = {}

---@param EntryPoint int32
function AWeaponUpgradePickup_Base_C:ExecuteUbergraph_WeaponUpgradePickup_Base(EntryPoint) end

---@param PlayerInteracting AActor
function AWeaponUpgradePickup_Base_C:Interact(PlayerInteracting) end

---@param AlreadyAcquired boolean
function AWeaponUpgradePickup_Base_C:SetState(AlreadyAcquired) end
