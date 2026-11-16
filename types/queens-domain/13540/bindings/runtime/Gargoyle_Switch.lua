---@meta

---@class AGargoyle_Switch_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field Gargoyle_Switch_Fire UNiagaraComponent
---@field Timeline_0_NewTrack_0_A5E3BA0842F4A3DABE64679342AE2728 float
---@field Timeline_0__Direction_A5E3BA0842F4A3DABE64679342AE2728 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field DoorRef ALib_FrontDoor_BP_C
---@field SwitchIndex int32
---@field ThingsToActivate TArray<TScriptInterface<IActivatable_C>>
---@field FogDA UENVControlData_C
---@field Lit boolean
local AGargoyle_Switch_C = {}

function AGargoyle_Switch_C:Activate() end

---@param EntryPoint int32
function AGargoyle_Switch_C:ExecuteUbergraph_Gargoyle_Switch(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AGargoyle_Switch_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function AGargoyle_Switch_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AGargoyle_Switch_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param DA UENVControlData_C
function AGargoyle_Switch_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AGargoyle_Switch_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function AGargoyle_Switch_C:ShouldNotBeTargetedByHoming(Tags) end

function AGargoyle_Switch_C:Timeline_0__FinishedFunc() end

function AGargoyle_Switch_C:Timeline_0__UpdateFunc() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AGargoyle_Switch_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AGargoyle_Switch_C:UpdateFogDAValues() end

function AGargoyle_Switch_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AGargoyle_Switch_C['Restore State From Save Data'] = function(self, Data) end
