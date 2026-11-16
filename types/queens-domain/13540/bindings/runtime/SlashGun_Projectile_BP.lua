---@meta

---@class ASlashGun_Projectile_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Trail UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleUp_NewTrack_0_F9208C2F48D30E3D498F669317E394D5 float
---@field ScaleUp__Direction_F9208C2F48D30E3D498F669317E394D5 ETimelineDirection::Type
---@field ScaleUp UTimelineComponent
---@field ['Impact Damage Amount'] float
---@field DisableTrailDeactivation boolean
---@field FireSound USoundBase
---@field LastFrameLoc FVector
---@field HitRadius float
---@field AlreadyHit boolean
---@field HitWater boolean
---@field StartScale FVector
---@field Damage FFB_DamageAttributeSet
---@field AimDir FVector
---@field ImpactFX UNiagaraSystem
---@field DistanceTravelled float
---@field TravelDistanceDamageCurve UCurveFloat
---@field OpacityExponent float
local ASlashGun_Projectile_BP_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ASlashGun_Projectile_BP_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
function ASlashGun_Projectile_BP_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function ASlashGun_Projectile_BP_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param DestroyedActor AActor
function ASlashGun_Projectile_BP_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function ASlashGun_Projectile_BP_C:ExecuteUbergraph_SlashGun_Projectile_BP(EntryPoint) end

function ASlashGun_Projectile_BP_C:InstantlyDissolve() end

function ASlashGun_Projectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASlashGun_Projectile_BP_C:ReceiveTick(DeltaSeconds) end

function ASlashGun_Projectile_BP_C:ScaleUp__FinishedFunc() end

function ASlashGun_Projectile_BP_C:ScaleUp__UpdateFunc() end

function ASlashGun_Projectile_BP_C:TickLast() end

ASlashGun_Projectile_BP_C['Pre-Destruction'] = function(self) end
