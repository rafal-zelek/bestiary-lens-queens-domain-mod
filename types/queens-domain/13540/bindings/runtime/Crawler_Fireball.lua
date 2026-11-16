---@meta

---@class ACrawler_Fireball_C : AFishmaner_Projectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Crawler_Fireball_Loop UAudioComponent
---@field StaticMesh1 UStaticMeshComponent
---@field Graphics UNiagaraComponent
---@field PointLight UPointLightComponent
---@field Timeline_0_scal_E44D83A94AC8486712B75B9743B9973B float
---@field Timeline_0__Direction_E44D83A94AC8486712B75B9743B9973B ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field chargeopfx UNiagaraComponent
---@field HomingPower float
---@field DissolveFXC UNiagaraSystem
---@field ChargeFX UNiagaraSystem
---@field MaxScale float
---@field SpawnSound USoundCue
---@field SkipSpawnFX boolean
local ACrawler_Fireball_C = {}

---@param ImpactResult FHitResult
function ACrawler_Fireball_C:BndEvt__Crawler_Fireball_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ACrawler_Fireball_C:ExecuteUbergraph_Crawler_Fireball(EntryPoint) end

function ACrawler_Fireball_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ACrawler_Fireball_C:ReceiveTick(DeltaSeconds) end

function ACrawler_Fireball_C:Timeline_0__FinishedFunc() end

function ACrawler_Fireball_C:Timeline_0__UpdateFunc() end
