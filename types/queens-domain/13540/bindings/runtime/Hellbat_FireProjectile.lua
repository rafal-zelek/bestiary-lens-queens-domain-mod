---@meta

---@class AHellbat_FireProjectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Crawler_Fireball_Loop UAudioComponent
local AHellbat_FireProjectile_C = {}

---@param ImpactResult FHitResult
function AHellbat_FireProjectile_C:BndEvt__Hellbat_FireProjectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function AHellbat_FireProjectile_C:ExecuteUbergraph_Hellbat_FireProjectile(EntryPoint) end

function AHellbat_FireProjectile_C:ReceiveBeginPlay() end
