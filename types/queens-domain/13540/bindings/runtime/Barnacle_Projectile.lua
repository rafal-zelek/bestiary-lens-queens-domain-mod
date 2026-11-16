---@meta

---@class ABarnacle_Projectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ExplosionRadius float
---@field Explosion UNiagaraSystem
local ABarnacle_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
function ABarnacle_Projectile_C:ApplyDamageTOTarget(Target, Hit) end

---@param ImpactResult FHitResult
function ABarnacle_Projectile_C:BndEvt__Barnacle_Projectile_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ABarnacle_Projectile_C:ExecuteUbergraph_Barnacle_Projectile(EntryPoint) end
