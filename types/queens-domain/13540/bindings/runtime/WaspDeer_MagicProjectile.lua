---@meta

---@class AWaspDeer_MagicProjectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HomingPower float
local AWaspDeer_MagicProjectile_C = {}

---@param ImpactResult FHitResult
function AWaspDeer_MagicProjectile_C:BndEvt__WaspDeer_MagicProjectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function AWaspDeer_MagicProjectile_C:ExecuteUbergraph_WaspDeer_MagicProjectile(EntryPoint) end

---@param DeltaSeconds float
function AWaspDeer_MagicProjectile_C:ReceiveTick(DeltaSeconds) end
