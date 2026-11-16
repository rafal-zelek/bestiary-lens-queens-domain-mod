---@meta

---@class ABoner_Gun_LargeProjectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ABoner_Gun_LargeProjectile_C = {}

---@param Target AActor
---@param Hit FHitResult
function ABoner_Gun_LargeProjectile_C:ApplyDamageTOTarget(Target, Hit) end

---@param Target AActor
---@param Hit FHitResult
function ABoner_Gun_LargeProjectile_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function ABoner_Gun_LargeProjectile_C:BndEvt__Boner_Gun_LargeProjectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ABoner_Gun_LargeProjectile_C:ExecuteUbergraph_Boner_Gun_LargeProjectile(EntryPoint) end
