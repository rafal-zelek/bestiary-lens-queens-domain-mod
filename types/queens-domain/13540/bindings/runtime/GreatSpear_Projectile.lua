---@meta

---@class AGreatSpear_Projectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Portal UNiagaraComponent
---@field Mesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_Fade_30FE4454449F65DE6B3FF0A97925105E float
---@field Timeline_0_pos_30FE4454449F65DE6B3FF0A97925105E float
---@field Timeline_0__Direction_30FE4454449F65DE6B3FF0A97925105E ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Damage FFB_DamageAttributeSet
---@field HitboxEnabled boolean
---@field HitActors TSet<AActor>
---@field TargetActor AActor
local AGreatSpear_Projectile_C = {}

---@param EntryPoint int32
function AGreatSpear_Projectile_C:ExecuteUbergraph_GreatSpear_Projectile(EntryPoint) end

function AGreatSpear_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AGreatSpear_Projectile_C:ReceiveTick(DeltaSeconds) end

function AGreatSpear_Projectile_C:Timeline_0__Enditbox__EventFunc() end

function AGreatSpear_Projectile_C:Timeline_0__FinishedFunc() end

function AGreatSpear_Projectile_C:Timeline_0__UpdateFunc() end

function AGreatSpear_Projectile_C:TrackTarget() end
