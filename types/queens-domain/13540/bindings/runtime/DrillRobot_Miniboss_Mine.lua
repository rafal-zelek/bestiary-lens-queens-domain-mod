---@meta

---@class ADrillRobot_Miniboss_Mine_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox USphereComponent
---@field PointLight UPointLightComponent
---@field ExplodeTrigger USphereComponent
---@field GlowSpriteComp UGlowSpriteComp_C
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Damage FFB_DamageAttributeSet
---@field Active boolean
local ADrillRobot_Miniboss_Mine_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ADrillRobot_Miniboss_Mine_C:BndEvt__DrillRobot_Miniboss_Mine_Hitbox_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param EntryPoint int32
function ADrillRobot_Miniboss_Mine_C:ExecuteUbergraph_DrillRobot_Miniboss_Mine(EntryPoint) end

function ADrillRobot_Miniboss_Mine_C:Explode() end

---@param bPosOverridden boolean
function ADrillRobot_Miniboss_Mine_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ADrillRobot_Miniboss_Mine_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ADrillRobot_Miniboss_Mine_C:ReceiveBeginPlay() end

---@param Tags FGameplayTagContainer
function ADrillRobot_Miniboss_Mine_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ADrillRobot_Miniboss_Mine_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
