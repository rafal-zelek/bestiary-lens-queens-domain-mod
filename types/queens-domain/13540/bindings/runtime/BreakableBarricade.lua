---@meta

---@class ABreakableBarricade_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Barricade_Broken_BarricadeBoards_00_Broken USkeletalMeshComponent
---@field StaticMesh UStaticMeshComponent
---@field Timeline_2_Shake_1C79267B4FCAA24C5464D9B6996AD1A8 float
---@field Timeline_2__Direction_1C79267B4FCAA24C5464D9B6996AD1A8 ETimelineDirection::Type
---@field Timeline_2 UTimelineComponent
---@field Timeline_1_Fade_F9D7998D4E0DA19AA39A7EB283F0172C float
---@field Timeline_1__Direction_F9D7998D4E0DA19AA39A7EB283F0172C ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_BallColor_5C3FE5904B6A8C78CB06CCAA38726C76 FLinearColor
---@field Timeline_0__Direction_5C3FE5904B6A8C78CB06CCAA38726C76 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field HP float
---@field Fog UENVControlData_C
---@field Anim UAnimMontage
---@field BaseMeshPos FTransform
local ABreakableBarricade_C = {}

---@param EntryPoint int32
function ABreakableBarricade_C:ExecuteUbergraph_BreakableBarricade(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ABreakableBarricade_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function ABreakableBarricade_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ABreakableBarricade_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param NotifyName FName
function ABreakableBarricade_C:OnBlendOut_D67F70964941469E52D39186EDEBD1FF(NotifyName) end

---@param NotifyName FName
function ABreakableBarricade_C:OnCompleted_D67F70964941469E52D39186EDEBD1FF(NotifyName) end

---@param NotifyName FName
function ABreakableBarricade_C:OnInterrupted_D67F70964941469E52D39186EDEBD1FF(NotifyName) end

---@param NotifyName FName
function ABreakableBarricade_C:OnNotifyBegin_D67F70964941469E52D39186EDEBD1FF(NotifyName) end

---@param NotifyName FName
function ABreakableBarricade_C:OnNotifyEnd_D67F70964941469E52D39186EDEBD1FF(NotifyName) end

function ABreakableBarricade_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function ABreakableBarricade_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ABreakableBarricade_C:SetBetaFogDA(DA) end

function ABreakableBarricade_C:Shake() end

---@param Tags FGameplayTagContainer
function ABreakableBarricade_C:ShouldNotBeTargetedByHoming(Tags) end

function ABreakableBarricade_C:Timeline_0__FinishedFunc() end

function ABreakableBarricade_C:Timeline_0__UpdateFunc() end

function ABreakableBarricade_C:Timeline_1__FinishedFunc() end

function ABreakableBarricade_C:Timeline_1__UpdateFunc() end

function ABreakableBarricade_C:Timeline_2__FinishedFunc() end

function ABreakableBarricade_C:Timeline_2__UpdateFunc() end

function ABreakableBarricade_C:TookDamageFlash() end

function ABreakableBarricade_C:TookHit() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABreakableBarricade_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ABreakableBarricade_C:UpdateFogDAValues() end

function ABreakableBarricade_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
ABreakableBarricade_C['Restore State From Save Data'] = function(self, Data) end
