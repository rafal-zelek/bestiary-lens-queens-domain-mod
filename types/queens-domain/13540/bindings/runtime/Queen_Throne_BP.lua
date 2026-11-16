---@meta

---@class AQueen_Throne_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field QueenChair_Baked USkeletalMeshComponent
---@field Timeline_0_Fade_64159BA64FADFF12B88537A8A23FF1EA float
---@field Timeline_0__Direction_64159BA64FADFF12B88537A8A23FF1EA ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
local AQueen_Throne_BP_C = {}

function AQueen_Throne_BP_C:Break() end

---@param EntryPoint int32
function AQueen_Throne_BP_C:ExecuteUbergraph_Queen_Throne_BP(EntryPoint) end

---@param bPosOverridden boolean
function AQueen_Throne_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AQueen_Throne_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function AQueen_Throne_BP_C:Reset() end

---@param Tags FGameplayTagContainer
function AQueen_Throne_BP_C:ShouldNotBeTargetedByHoming(Tags) end

function AQueen_Throne_BP_C:Timeline_0__FinishedFunc() end

function AQueen_Throne_BP_C:Timeline_0__UpdateFunc() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AQueen_Throne_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
