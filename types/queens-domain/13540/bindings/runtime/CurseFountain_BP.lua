---@meta

---@class ACurseFountain_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FountainNoises UAudioComponent
---@field SwampNoises UAudioComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field Shield UStaticMeshComponent
---@field CurseFountain_Poison UStaticMeshComponent
---@field CurseFountain_SM UStaticMeshComponent
---@field Timeline_2_Shake_AE5F638741C812BD26F12BA313EE3F9B float
---@field Timeline_2__Direction_AE5F638741C812BD26F12BA313EE3F9B ETimelineDirection::Type
---@field Timeline_2 UTimelineComponent
---@field Timeline_1_NewTrack_0_AE72015640B70BE539DEC5B30C841510 float
---@field Timeline_1__Direction_AE72015640B70BE539DEC5B30C841510 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_NewTrack_0_3A3E18FB401C411ADBC3EA871D8D8F91 float
---@field Timeline_0__Direction_3A3E18FB401C411ADBC3EA871D8D8F91 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Disappear_Fade_C029CC7D4891B744C39D1D85089F92B0 float
---@field Disappear_ContrastBump_C029CC7D4891B744C39D1D85089F92B0 float
---@field Disappear_SphereSize_C029CC7D4891B744C39D1D85089F92B0 float
---@field Disappear__Direction_C029CC7D4891B744C39D1D85089F92B0 ETimelineDirection::Type
---@field Disappear UTimelineComponent
---@field AlphaFog UFS_FogData_Base
---@field BetaFog UFS_FogData_Base
---@field Activatables TArray<AActor>
---@field OwnedSwampMeshes TArray<AStaticMeshActor>
---@field OwnedColliders TArray<AStaticMeshActor>
---@field BorderingSwampMeshes TMap<AStaticMeshActor, int32>
---@field FadeRadius float
---@field Preview boolean
---@field AllOwnedMeshComps TArray<UMeshComponent>
---@field ActivationCount int32
---@field ShieldIsActive boolean
---@field Health float
---@field BaseMeshPos FTransform
---@field NSDToSet FName
local ACurseFountain_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ACurseFountain_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ACurseFountain_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function ACurseFountain_BP_C:Disappear__FinishedFunc() end

function ACurseFountain_BP_C:Disappear__UpdateFunc() end

---@param EntryPoint int32
function ACurseFountain_BP_C:ExecuteUbergraph_CurseFountain_BP(EntryPoint) end

function ACurseFountain_BP_C:FinishBreaking() end

function ACurseFountain_BP_C:FixDrops() end

---@param bPosOverridden boolean
function ACurseFountain_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ACurseFountain_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ACurseFountain_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ACurseFountain_BP_C:ReceiveTick(DeltaSeconds) end

---@param Loc FVector
function ACurseFountain_BP_C:ResistHitAnim(Loc) end

---@param Data UFS_FogData_Base
function ACurseFountain_BP_C:SetFogAlpha(Data) end

---@param Data UFS_FogData_Base
function ACurseFountain_BP_C:SetFogBeta(Data) end

---@param ParameterValue float
---@param Option_0 FName
---@param Option_1 FName
---@param Option_2 FName
function ACurseFountain_BP_C:SetParamsOnBorders(ParameterValue, Option_0, Option_1, Option_2) end

function ACurseFountain_BP_C:Shake() end

---@param Tags FGameplayTagContainer
function ACurseFountain_BP_C:ShouldNotBeTargetedByHoming(Tags) end

function ACurseFountain_BP_C:Timeline_0__FinishedFunc() end

function ACurseFountain_BP_C:Timeline_0__UpdateFunc() end

function ACurseFountain_BP_C:Timeline_1__FinishedFunc() end

function ACurseFountain_BP_C:Timeline_1__UpdateFunc() end

function ACurseFountain_BP_C:Timeline_2__FinishedFunc() end

function ACurseFountain_BP_C:Timeline_2__UpdateFunc() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ACurseFountain_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param bEditorTemp boolean
function ACurseFountain_BP_C:UpdateFogProperties(bEditorTemp) end

---@param DeltaTime float
function ACurseFountain_BP_C:UpdateSwampNoises(DeltaTime) end

function ACurseFountain_BP_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
ACurseFountain_BP_C['Restore State From Save Data'] = function(self, Data) end
