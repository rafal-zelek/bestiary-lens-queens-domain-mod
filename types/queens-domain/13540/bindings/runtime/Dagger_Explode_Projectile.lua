---@meta

---@class ADagger_Explode_Projectile_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Config UPlayerBalance_C
---@field ObjectTypesToHit TArray<EObjectTypeQuery>
---@field Rotation float
local ADagger_Explode_Projectile_C = {}

---@param ImpactResult FHitResult
function ADagger_Explode_Projectile_C:BndEvt__Dagger_Explode_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ADagger_Explode_Projectile_C:ExecuteUbergraph_Dagger_Explode_Projectile(EntryPoint) end

---@param Hit FHitResult
---@param bPickA boolean
function ADagger_Explode_Projectile_C:InitByHit(Hit, bPickA) end

function ADagger_Explode_Projectile_C:InstantlyDissolve() end

function ADagger_Explode_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ADagger_Explode_Projectile_C:ReceiveTick(DeltaSeconds) end
