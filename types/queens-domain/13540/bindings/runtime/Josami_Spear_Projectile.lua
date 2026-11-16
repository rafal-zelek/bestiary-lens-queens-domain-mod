---@meta

---@class AJosami_Spear_Projectile_C : AFishmaner_Projectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Crawler_Fireball_Loop UAudioComponent
---@field StaticMesh1 UStaticMeshComponent
---@field Graphics UNiagaraComponent
---@field PointLight UPointLightComponent
---@field Timeline_0_scal_36712B7C47237A543600399C2E6389AC float
---@field Timeline_0__Direction_36712B7C47237A543600399C2E6389AC ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field chargeopfx UNiagaraComponent
---@field HomingPower float
---@field ChargeFX UNiagaraSystem
---@field Impact UNiagaraSystem
local AJosami_Spear_Projectile_C = {}

---@param ImpactResult FHitResult
function AJosami_Spear_Projectile_C:BndEvt__Crawler_Fireball_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function AJosami_Spear_Projectile_C:ExecuteUbergraph_Josami_Spear_Projectile(EntryPoint) end

function AJosami_Spear_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AJosami_Spear_Projectile_C:ReceiveTick(DeltaSeconds) end

function AJosami_Spear_Projectile_C:Timeline_0__FinishedFunc() end

function AJosami_Spear_Projectile_C:Timeline_0__UpdateFunc() end
