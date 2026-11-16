---@meta

---@class AHellSlime_Diseaseball_C : AFishmaner_Projectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Crawler_Fireball_Loop UAudioComponent
---@field StaticMesh1 UStaticMeshComponent
---@field Graphics UNiagaraComponent
---@field Charge_scal_ABE64729454D5C473CB2E5973C31CCA4 float
---@field Charge__Direction_ABE64729454D5C473CB2E5973C31CCA4 ETimelineDirection::Type
---@field Charge UTimelineComponent
---@field HomingPower float
---@field DissolveFXC UNiagaraSystem
---@field ChargeTime float
---@field Asploded FHellSlime_Diseaseball_CAsploded
---@field ChargeProgress float
local AHellSlime_Diseaseball_C = {}

function AHellSlime_Diseaseball_C:Asploded__DelegateSignature() end

---@param ImpactResult FHitResult
function AHellSlime_Diseaseball_C:BndEvt__Crawler_Fireball_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

function AHellSlime_Diseaseball_C:Charge__FinishedFunc() end

function AHellSlime_Diseaseball_C:Charge__UpdateFunc() end

---@param EntryPoint int32
function AHellSlime_Diseaseball_C:ExecuteUbergraph_HellSlime_Diseaseball(EntryPoint) end

function AHellSlime_Diseaseball_C:Fire() end

function AHellSlime_Diseaseball_C:ForceExpire() end

function AHellSlime_Diseaseball_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AHellSlime_Diseaseball_C:ReceiveTick(DeltaSeconds) end

function AHellSlime_Diseaseball_C:StartExpireTimer() end

function AHellSlime_Diseaseball_C:durationexpired() end
