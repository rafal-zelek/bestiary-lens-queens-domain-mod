---@meta

---@class APermabreakable_base_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NavMeshBlocker UBoxComponent
---@field Remnant UStaticMeshComponent
---@field DropLocation USceneComponent
---@field BreakMesh USkeletalMeshComponent
---@field UnbrokenMesh UStaticMeshComponent
---@field ShakeTL_Shake_C55B50C948525E09174BD0937301B847 float
---@field ShakeTL__Direction_C55B50C948525E09174BD0937301B847 ETimelineDirection::Type
---@field ShakeTL UTimelineComponent
---@field BreakFade_Fade_C08A13364EECEF17BE1689AD9952B87E float
---@field BreakFade__Direction_C08A13364EECEF17BE1689AD9952B87E ETimelineDirection::Type
---@field BreakFade UTimelineComponent
---@field ActorsToActivateOnBreak TArray<TScriptInterface<IActivatable_C>>
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field BreakSound USoundBase
---@field PreviewBroken boolean
---@field HP float
---@field HitSound USoundBase
---@field DisableFogVertexColor boolean
---@field BaseMeshPos FTransform
---@field CountsForAchievement boolean
local APermabreakable_base_C = {}

function APermabreakable_base_C:AlreadyBroke() end

function APermabreakable_base_C:Break() end

function APermabreakable_base_C:BreakFade__FinishedFunc() end

function APermabreakable_base_C:BreakFade__UpdateFunc() end

---@param EntryPoint int32
function APermabreakable_base_C:ExecuteUbergraph_Permabreakable_base(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function APermabreakable_base_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function APermabreakable_base_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function APermabreakable_base_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function APermabreakable_base_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function APermabreakable_base_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function APermabreakable_base_C:SetBetaFogDA(DA) end

---@param Condition boolean
function APermabreakable_base_C:SetPartsVisibility(Condition) end

function APermabreakable_base_C:Shake() end

function APermabreakable_base_C:ShakeTL__FinishedFunc() end

function APermabreakable_base_C:ShakeTL__UpdateFunc() end

---@param Tags FGameplayTagContainer
function APermabreakable_base_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function APermabreakable_base_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function APermabreakable_base_C:UpdateFogDAValues() end

function APermabreakable_base_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
APermabreakable_base_C['Restore State From Save Data'] = function(self, Data) end
