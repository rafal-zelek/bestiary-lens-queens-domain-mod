---@meta

---@class AFS_LookerDecoy_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Scene USceneComponent
---@field SPlatFX TMap<UMaterialInterface, UNiagaraSystem>
local AFS_LookerDecoy_C = {}

---@param EntryPoint int32
function AFS_LookerDecoy_C:ExecuteUbergraph_FS_LookerDecoy(EntryPoint) end

---@param bPosOverridden boolean
function AFS_LookerDecoy_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AFS_LookerDecoy_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param Tags FGameplayTagContainer
function AFS_LookerDecoy_C:ShouldNotBeTargetedByHoming(Tags) end

function AFS_LookerDecoy_C:Splat() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AFS_LookerDecoy_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AFS_LookerDecoy_C:UserConstructionScript() end
