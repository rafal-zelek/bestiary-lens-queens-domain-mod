---@meta

---@class ALizard_Base_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MoveAudio UAudioComponent
---@field ActorUROManager UActorUROManager
---@field LizardCritter USkeletalMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field StartPos FTransform
---@field Trigger ACritter_SpookTrigger_C
---@field Dead boolean
---@field RespawnTime float
---@field TargetPoint AActor
---@field MovementSpeed float
---@field LocalDT float
---@field Spooked boolean
---@field NavPointCount int32
---@field NavAngleAdjust float
---@field NavBonusHeight float
---@field SpookSize float
---@field NavTracePos float
---@field TravelPoints TArray<FTransform>
---@field CurrentPoint int32
---@field CurrentPos FVector
---@field PathWiggliness float
---@field PathWiggleFreq float
---@field PathWiggleOffset float
---@field FogAlpha UFS_FogData_Base
---@field FogBeta UFS_FogData_Base
---@field DisableFogVertexColor boolean
local ALizard_Base_BP_C = {}

---@param WiggleLen float
---@param PathPercent float
function ALizard_Base_BP_C:CalculatePathAngle(WiggleLen, PathPercent) end

function ALizard_Base_BP_C:CancelRespawnTimer() end

---@param Violence boolean
function ALizard_Base_BP_C:CustomEvent_0(Violence) end

function ALizard_Base_BP_C:DebugPath() end

function ALizard_Base_BP_C:EndSpook() end

---@param EntryPoint int32
function ALizard_Base_BP_C:ExecuteUbergraph_Lizard_Base_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ALizard_Base_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function ALizard_Base_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ALizard_Base_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ALizard_Base_BP_C:GetTargetLoc() end

function ALizard_Base_BP_C:Kill() end

function ALizard_Base_BP_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function ALizard_Base_BP_C:ReceiveEndPlay(EndPlayReason) end

---@param DeltaSeconds float
function ALizard_Base_BP_C:ReceiveTick(DeltaSeconds) end

function ALizard_Base_BP_C:RefreshPath() end

---@param NewItem FTransform
function ALizard_Base_BP_C:RegisterPathPoint(NewItem) end

function ALizard_Base_BP_C:Respawn() end

---@param DA UENVControlData_C
function ALizard_Base_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ALizard_Base_BP_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function ALizard_Base_BP_C:ShouldNotBeTargetedByHoming(Tags) end

function ALizard_Base_BP_C:Spook() end

function ALizard_Base_BP_C:StartRespawnTimer() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ALizard_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ALizard_Base_BP_C:UpdateFogDAValues() end

function ALizard_Base_BP_C:UserConstructionScript() end
