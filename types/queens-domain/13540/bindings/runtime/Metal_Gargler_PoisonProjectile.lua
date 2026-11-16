---@meta

---@class AMetal_Gargler_PoisonProjectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_NewTrack_0_1BE9EC4F436045021F51A5A24E3368D2 float
---@field Timeline_0__Direction_1BE9EC4F436045021F51A5A24E3368D2 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
local AMetal_Gargler_PoisonProjectile_C = {}

---@param ImpactResult FHitResult
function AMetal_Gargler_PoisonProjectile_C:BndEvt__Metal_Gargler_PoisonProjectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param OutHit FHitResult
function AMetal_Gargler_PoisonProjectile_C:DoTrace(OutHit) end

---@param EntryPoint int32
function AMetal_Gargler_PoisonProjectile_C:ExecuteUbergraph_Metal_Gargler_PoisonProjectile(EntryPoint) end

function AMetal_Gargler_PoisonProjectile_C:ReceiveBeginPlay() end

function AMetal_Gargler_PoisonProjectile_C:Timeline_0__FinishedFunc() end

function AMetal_Gargler_PoisonProjectile_C:Timeline_0__UpdateFunc() end
