---@meta

---@class ASeaSlug_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hitbox2 USphereComponent
---@field Hitbox1 USphereComponent
---@field currentpfx UNiagaraComponent
---@field CurrentAttackSound UAudioComponent
---@field CurrentFloorPFX UNiagaraComponent
local ASeaSlug_Base_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function ASeaSlug_Base_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

function ASeaSlug_Base_BP_C:CheckChase() end

---@param EntryPoint int32
function ASeaSlug_Base_BP_C:ExecuteUbergraph_SeaSlug_Base_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ASeaSlug_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param DeltaSeconds float
function ASeaSlug_Base_BP_C:ReceiveTick(DeltaSeconds) end

function ASeaSlug_Base_BP_C:StopAllMovement() end

function ASeaSlug_Base_BP_C:TickBehaviour() end

function ASeaSlug_Base_BP_C:TickHitboxes() end

ASeaSlug_Base_BP_C['Update Rotation'] = function(self) end
