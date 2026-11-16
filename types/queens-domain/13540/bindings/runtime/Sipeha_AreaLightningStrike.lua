---@meta

---@class ASipeha_AreaLightningStrike_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ExplosionHitbox1 USphereComponent
---@field ExplosionHitbox4 USphereComponent
---@field ExplosionHitbox3 USphereComponent
---@field ExplosionHitbox2 USphereComponent
---@field PointLight UPointLightComponent
---@field ExplosionHitbox USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field StrikeAnim_WarningLightIntensity_00A06FD94B0633F47BC6F89C23621968 float
---@field StrikeAnim__Direction_00A06FD94B0633F47BC6F89C23621968 ETimelineDirection::Type
---@field StrikeAnim UTimelineComponent
---@field Damage FFB_DamageAttributeSet
---@field WarningLightIntensity float
---@field StartRockRotation FRotator
---@field WarningPFX UNiagaraComponent
local ASipeha_AreaLightningStrike_C = {}

function ASipeha_AreaLightningStrike_C:DoHit() end

---@param EntryPoint int32
function ASipeha_AreaLightningStrike_C:ExecuteUbergraph_Sipeha_AreaLightningStrike(EntryPoint) end

function ASipeha_AreaLightningStrike_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASipeha_AreaLightningStrike_C:ReceiveTick(DeltaSeconds) end

function ASipeha_AreaLightningStrike_C:StrikeAnim__FinishedFunc() end

function ASipeha_AreaLightningStrike_C:StrikeAnim__UpdateFunc() end

---@param Target USphereComponent
---@param Successfully_hit boolean
function ASipeha_AreaLightningStrike_C:TryExplosionHit(Target, Successfully_hit) end
