---@meta

---@class AWindReactorBP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
---@field PuffVFX UNiagaraSystem
local AWindReactorBP_C = {}

---@param Force FVector
---@param Countmult float
---@param PuffPFX UNiagaraComponent
function AWindReactorBP_C:ConfigurePuff(Force, Countmult, PuffPFX) end

---@param EntryPoint int32
function AWindReactorBP_C:ExecuteUbergraph_WindReactorBP(EntryPoint) end

---@param bPosOverridden boolean
function AWindReactorBP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AWindReactorBP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param Force FVector
---@param InValue float
---@param Loc FVector
function AWindReactorBP_C:Puff(Force, InValue, Loc) end

---@param Tags FGameplayTagContainer
function AWindReactorBP_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Location FVector
function AWindReactorBP_C:SpawnPuff(Location) end

function AWindReactorBP_C:TestPuff() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AWindReactorBP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
