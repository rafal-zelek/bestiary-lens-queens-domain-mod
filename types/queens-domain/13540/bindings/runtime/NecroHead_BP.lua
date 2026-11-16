---@meta

---@class ANecroHead_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActorUROManager UActorUROManager
---@field Necrohead_Passive UAudioComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field FaceDissolve_FaceDissolve_AE98657742799289AA8DD781E92350B6 float
---@field FaceDissolve__Direction_AE98657742799289AA8DD781E92350B6 ETimelineDirection::Type
---@field FaceDissolve UTimelineComponent
---@field OnDestroyedByAcid FNecroHead_BP_COnDestroyedByAcid
---@field AlphaFog UENVControlData_C
---@field BetaFog UENVControlData_C
---@field Output_CalculatedDissolveTime float
---@field DissolveStartPos FVector
---@field Destroyed boolean
---@field PopRadius float
---@field PopOffset float
---@field Popped boolean
---@field ActivatablesDelayWhenDestroyed float
---@field CollisionDisableDelayWhenDestroyed float
---@field DissolveOffset float
---@field NeedsActivation boolean
---@field ManagerToActivate TScriptInterface<IActivatable_C>
local ANecroHead_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ANecroHead_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ANecroHead_BP_C:CalculateWallDissolveTime() end

function ANecroHead_BP_C:CancelGroaning() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ANecroHead_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param Hit FHitResult
function ANecroHead_BP_C:DestroyedByAcid(Hit) end

---@param DissolveStartPos FVector
function ANecroHead_BP_C:DissolveStarted(DissolveStartPos) end

---@param Radius float
function ANecroHead_BP_C:DissolveUpdated(Radius) end

---@param EntryPoint int32
function ANecroHead_BP_C:ExecuteUbergraph_NecroHead_BP(EntryPoint) end

function ANecroHead_BP_C:FaceDissolve__FinishedFunc() end

function ANecroHead_BP_C:FaceDissolve__UpdateFunc() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ANecroHead_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function ANecroHead_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ANecroHead_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ANecroHead_BP_C:Groaning() end

---@param Hit FHitResult
function ANecroHead_BP_C:HitByNonDestroyingDamage(Hit) end

---@param NotifyName FName
function ANecroHead_BP_C:OnBlendOut_1E35A5C24EB251CEC3ADA88E0711E463(NotifyName) end

---@param NotifyName FName
function ANecroHead_BP_C:OnCompleted_1E35A5C24EB251CEC3ADA88E0711E463(NotifyName) end

---@param HeadThatWasDestroyed ANecroHead_BP_C
function ANecroHead_BP_C:OnDestroyedByAcid__DelegateSignature(HeadThatWasDestroyed) end

---@param NotifyName FName
function ANecroHead_BP_C:OnInterrupted_1E35A5C24EB251CEC3ADA88E0711E463(NotifyName) end

---@param NotifyName FName
function ANecroHead_BP_C:OnNotifyBegin_1E35A5C24EB251CEC3ADA88E0711E463(NotifyName) end

---@param NotifyName FName
function ANecroHead_BP_C:OnNotifyEnd_1E35A5C24EB251CEC3ADA88E0711E463(NotifyName) end

function ANecroHead_BP_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function ANecroHead_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ANecroHead_BP_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function ANecroHead_BP_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ANecroHead_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ANecroHead_BP_C:UpdateFogDAValues() end

function ANecroHead_BP_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
ANecroHead_BP_C['Restore State From Save Data'] = function(self, Data) end
