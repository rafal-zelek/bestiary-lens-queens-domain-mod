---@meta

---@class ASpider_Stone_Projectile_C : ASpider_Projectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh1 UStaticMeshComponent
---@field RotatingMovement URotatingMovementComponent
local ASpider_Stone_Projectile_C = {}

---@param ImpactResult FHitResult
function ASpider_Stone_Projectile_C:BndEvt__Spider_Stone_Projectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ASpider_Stone_Projectile_C:ExecuteUbergraph_Spider_Stone_Projectile(EntryPoint) end

function ASpider_Stone_Projectile_C:InstantlyDissolve() end
