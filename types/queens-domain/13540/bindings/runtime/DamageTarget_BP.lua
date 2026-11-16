---@meta

---@class ADamageTarget_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DaggerSnapPos USceneComponent
---@field Sphere USphereComponent
---@field Billboard UBillboardComponent
---@field OnceEver boolean
---@field RequiredWeaponDamageSource TSoftObjectPtr<UFS_ItemData_C>
---@field SoundOnHit USoundCue
---@field AlreadyHit boolean
---@field ActivationTargets TArray<TScriptInterface<IActivatable_C>>
---@field RequireAnyThrowingWeapon boolean
---@field RequireAnyPrimaryWeapon boolean
---@field FogDA UENVControlData_C
---@field FogDABeta UENVControlData_C
---@field DisableFogVertexColor boolean
---@field UnAllowedItems TArray<TSoftObjectPtr<UFS_ItemData_C>>
local ADamageTarget_BP_C = {}

---@param InputPin TSet<UPrimaryDataAsset>
---@param NewParam boolean
function ADamageTarget_BP_C:AreDamageItemsAllowed(InputPin, NewParam) end

---@param EntryPoint int32
function ADamageTarget_BP_C:ExecuteUbergraph_DamageTarget_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ADamageTarget_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function ADamageTarget_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ADamageTarget_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ADamageTarget_BP_C:Hit() end

---@param DA UENVControlData_C
function ADamageTarget_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ADamageTarget_BP_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function ADamageTarget_BP_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ADamageTarget_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ADamageTarget_BP_C:UpdateFogDAValues() end

function ADamageTarget_BP_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
ADamageTarget_BP_C['Restore State From Save Data'] = function(self, Data) end
