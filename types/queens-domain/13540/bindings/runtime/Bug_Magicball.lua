---@meta

---@class ABug_Magicball_C : AFishmaner_Projectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Crawler_Fireball_Loop UAudioComponent
---@field StaticMesh1 UStaticMeshComponent
---@field Graphics UNiagaraComponent
---@field PointLight UPointLightComponent
---@field Timeline_0_scal_21DA3FC54C396A638F38F081066C77D1 float
---@field Timeline_0__Direction_21DA3FC54C396A638F38F081066C77D1 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field chargeopfx UNiagaraComponent
---@field HomingPower float
---@field ChargeFX UNiagaraSystem
---@field Impact UNiagaraSystem
---@field Scale FVector
local ABug_Magicball_C = {}

---@param ImpactResult FHitResult
function ABug_Magicball_C:BndEvt__Crawler_Fireball_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ABug_Magicball_C:ExecuteUbergraph_Bug_Magicball(EntryPoint) end

function ABug_Magicball_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ABug_Magicball_C:ReceiveTick(DeltaSeconds) end

function ABug_Magicball_C:Timeline_0__FinishedFunc() end

function ABug_Magicball_C:Timeline_0__UpdateFunc() end
