---@meta

---@class ASpikeBall_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitCount int32
---@field Rotation float
local ASpikeBall_Projectile_BP_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ASpikeBall_Projectile_BP_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
---@param AllowStop boolean
function ASpikeBall_Projectile_BP_C:ApplyHit(Target, Hit, AllowStop) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function ASpikeBall_Projectile_BP_C:BndEvt__SpikeBall_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileBounceDelegate__DelegateSignature(ImpactResult, ImpactVelocity) end

---@param ImpactResult FHitResult
function ASpikeBall_Projectile_BP_C:BndEvt__SpikeBall_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ASpikeBall_Projectile_BP_C:ExecuteUbergraph_SpikeBall_Projectile_BP(EntryPoint) end

---@param Hit FHitResult
---@param bPickA boolean
function ASpikeBall_Projectile_BP_C:InitByHit(Hit, bPickA) end

function ASpikeBall_Projectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASpikeBall_Projectile_BP_C:ReceiveTick(DeltaSeconds) end
