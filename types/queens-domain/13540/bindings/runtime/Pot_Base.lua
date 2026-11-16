---@meta

---@class APot_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ColliderMesh UStaticMeshComponent
---@field LOSCheckPos USceneComponent
---@field NavModifier UNavModifierComponent
---@field DropLocation USceneComponent
---@field BreakMesh USkeletalMeshComponent
---@field UnbrokenMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field BreakFade_Fade_FEA8236A46558B1B1D3FAD895FD4CB1C float
---@field BreakFade__Direction_FEA8236A46558B1B1D3FAD895FD4CB1C ETimelineDirection::Type
---@field BreakFade UTimelineComponent
---@field Location EFS_PickupLocation
---@field Difficulty EFS_PickupDifficulty
---@field Drop FItemDrop
---@field ActorsToActivateOnBreak TArray<TScriptInterface<IActivatable_C>>
---@field CurrentFogAlphaDA UENVControlData_C
---@field BreakSound USoundBase
---@field FogBetaDA UENVControlData_C
---@field DisableFogVertexColor boolean
---@field Broken boolean
---@field ['Cull Distance'] float
---@field ['Import ID'] FName
---@field ['Base Pity Rate'] float
local APot_Base_C = {}

function APot_Base_C:Break() end

function APot_Base_C:BreakFade__FinishedFunc() end

function APot_Base_C:BreakFade__UpdateFunc() end

---@param EntryPoint int32
function APot_Base_C:ExecuteUbergraph_Pot_Base(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function APot_Base_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function APot_Base_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function APot_Base_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function APot_Base_C:ReceiveBeginPlay() end

function APot_Base_C:Respawn() end

function APot_Base_C:RestorePot() end

function APot_Base_C:Restored() end

---@param DA UENVControlData_C
function APot_Base_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function APot_Base_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function APot_Base_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function APot_Base_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function APot_Base_C:UpdateFogDAValues() end

function APot_Base_C:UserConstructionScript() end
