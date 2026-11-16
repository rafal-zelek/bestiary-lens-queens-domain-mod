---@meta

---@class AROS_Dragon_Vomit_Projectile_C : ADragon_FlamebreathProjectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AROS_Dragon_Vomit_Projectile_C = {}

---@param ImpactResult FHitResult
function AROS_Dragon_Vomit_Projectile_C:BndEvt__ROS_Dragon_Vomit_Projectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param OutHit FHitResult
function AROS_Dragon_Vomit_Projectile_C:DoTrace(OutHit) end

---@param EntryPoint int32
function AROS_Dragon_Vomit_Projectile_C:ExecuteUbergraph_ROS_Dragon_Vomit_Projectile(EntryPoint) end
