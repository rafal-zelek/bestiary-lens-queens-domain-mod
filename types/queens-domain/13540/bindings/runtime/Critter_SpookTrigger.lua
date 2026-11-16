---@meta

---@class ACritter_SpookTrigger_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpookArea USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field Spook FCritter_SpookTrigger_CSpook
---@field Unspook FCritter_SpookTrigger_CUnspook
local ACritter_SpookTrigger_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ACritter_SpookTrigger_C:BndEvt__Bug_SpookTrigger_SpookArea_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ACritter_SpookTrigger_C:BndEvt__Critter_SpookTrigger_SpookArea_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function ACritter_SpookTrigger_C:ExecuteUbergraph_Critter_SpookTrigger(EntryPoint) end

---@param bPosOverridden boolean
function ACritter_SpookTrigger_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ACritter_SpookTrigger_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param Tags FGameplayTagContainer
function ACritter_SpookTrigger_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Violence boolean
function ACritter_SpookTrigger_C:Spook__DelegateSignature(Violence) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ACritter_SpookTrigger_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ACritter_SpookTrigger_C:Unspook__DelegateSignature() end
