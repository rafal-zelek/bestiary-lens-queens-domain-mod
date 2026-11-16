---@meta

---@class AFish_School_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field PathToMoveAlong USplineComponent
---@field SchoolComponent UNiagaraComponent
---@field DefaultSceneRoot USceneComponent
---@field Spooked boolean
---@field RespawnTime float
---@field LocalDT float
---@field PathMoveSpeed float
---@field CurrentPathPos float
---@field ReverseDirection boolean
---@field SchoolTargetRadius float
---@field Surfaceoffset float
---@field EnableOverlapSpooking boolean
---@field FloorOffset float
---@field FishCount int32
---@field FogAlpha UFS_FogData_Base
local AFish_School_BP_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFish_School_BP_C:BndEvt__Fish_School_BP_Box_K2Node_ComponentBoundEvent_1_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param EntryPoint int32
function AFish_School_BP_C:ExecuteUbergraph_Fish_School_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AFish_School_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function AFish_School_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AFish_School_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function AFish_School_BP_C:PathingLogic() end

function AFish_School_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFish_School_BP_C:ReceiveTick(DeltaSeconds) end

---@param DA UENVControlData_C
function AFish_School_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AFish_School_BP_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function AFish_School_BP_C:ShouldNotBeTargetedByHoming(Tags) end

function AFish_School_BP_C:Spook() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AFish_School_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AFish_School_BP_C:UpdateFogDAValues() end

function AFish_School_BP_C:UserConstructionScript() end
