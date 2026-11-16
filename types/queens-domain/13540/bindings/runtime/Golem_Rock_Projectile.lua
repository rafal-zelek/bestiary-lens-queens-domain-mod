---@meta

---@class AGolem_Rock_Projectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FireTime float
---@field FogDist float
---@field FogFade float
---@field FogColor FLinearColor
---@field ImpactFX UNiagaraSystem
---@field Broken boolean
local AGolem_Rock_Projectile_C = {}

---@param ImpactResult FHitResult
function AGolem_Rock_Projectile_C:BndEvt__Golem_Rock_Projectile_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

function AGolem_Rock_Projectile_C:Break() end

---@param EntryPoint int32
function AGolem_Rock_Projectile_C:ExecuteUbergraph_Golem_Rock_Projectile(EntryPoint) end

function AGolem_Rock_Projectile_C:Fire() end

---@param DeltaSeconds float
function AGolem_Rock_Projectile_C:ReceiveTick(DeltaSeconds) end
