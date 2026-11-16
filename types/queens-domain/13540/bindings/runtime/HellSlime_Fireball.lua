---@meta

---@class AHellSlime_Fireball_C : AFishmaner_Projectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Crawler_Fireball_Loop UAudioComponent
---@field StaticMesh1 UStaticMeshComponent
---@field Graphics UNiagaraComponent
---@field PointLight UPointLightComponent
---@field Charge_scal_0AFD8FA04232B9C170AD7199D70848D6 float
---@field Charge__Direction_0AFD8FA04232B9C170AD7199D70848D6 ETimelineDirection::Type
---@field Charge UTimelineComponent
---@field HomingPower float
---@field DissolveFXC UNiagaraSystem
---@field ChargeTime float
---@field Asploded FHellSlime_Fireball_CAsploded
---@field ChargeProgress float
local AHellSlime_Fireball_C = {}

function AHellSlime_Fireball_C:Asploded__DelegateSignature() end

---@param ImpactResult FHitResult
function AHellSlime_Fireball_C:BndEvt__Crawler_Fireball_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

function AHellSlime_Fireball_C:Charge__FinishedFunc() end

function AHellSlime_Fireball_C:Charge__UpdateFunc() end

---@param EntryPoint int32
function AHellSlime_Fireball_C:ExecuteUbergraph_HellSlime_Fireball(EntryPoint) end

function AHellSlime_Fireball_C:Fire() end

function AHellSlime_Fireball_C:ForceExpire() end

function AHellSlime_Fireball_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AHellSlime_Fireball_C:ReceiveTick(DeltaSeconds) end

function AHellSlime_Fireball_C:StartExpireTimer() end

function AHellSlime_Fireball_C:durationexpired() end
