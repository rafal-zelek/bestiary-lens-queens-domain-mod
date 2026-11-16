---@meta

---@class ADragon_Fireball_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ImpactFX UNiagaraSystem
local ADragon_Fireball_C = {}

---@param ImpactResult FHitResult
function ADragon_Fireball_C:BndEvt__Dragon_Fireball_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ADragon_Fireball_C:ExecuteUbergraph_Dragon_Fireball(EntryPoint) end
