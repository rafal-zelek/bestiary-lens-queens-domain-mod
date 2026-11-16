---@meta

---@class ARat_Base_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MoveAudio UAudioComponent
---@field ActorUROManager UActorUROManager
---@field Mesh USkeletalMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Dead boolean
---@field RespawnDuration float
---@field StartPos FTransform
---@field Spooked boolean
---@field RatPath ARatPath_C
---@field PathTravelDirection boolean
---@field HideyHole AActor
---@field NormalMoveSpeed float
---@field RunningMoveSpeed float
---@field Trigger ACritter_SpookTrigger_C
---@field Moving boolean
---@field Threatened boolean
---@field LocalDT float
---@field CurrentSplinePos float
---@field Fading boolean
---@field PauseMovement boolean
---@field FogAlpha UFS_FogData_Base
---@field FogBeta UFS_FogData_Base
---@field DisableFogVertexColor boolean
local ARat_Base_BP_C = {}

function ARat_Base_BP_C:CancelPauseMoveLoop() end

function ARat_Base_BP_C:CancelRespawnTimer() end

---@param Violence boolean
function ARat_Base_BP_C:CustomEvent_0(Violence) end

function ARat_Base_BP_C:EndSpook() end

---@param EntryPoint int32
function ARat_Base_BP_C:ExecuteUbergraph_Rat_Base_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ARat_Base_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function ARat_Base_BP_C:GetHideyTargetLoc() end

---@param bPosOverridden boolean
function ARat_Base_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ARat_Base_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ARat_Base_BP_C:InitSPlinePos() end

function ARat_Base_BP_C:Kill() end

---@param Looped boolean
function ARat_Base_BP_C:PathingLogic(Looped) end

function ARat_Base_BP_C:PausemovementLoop() end

function ARat_Base_BP_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function ARat_Base_BP_C:ReceiveEndPlay(EndPlayReason) end

---@param DeltaSeconds float
function ARat_Base_BP_C:ReceiveTick(DeltaSeconds) end

function ARat_Base_BP_C:ResetMovingFlag() end

function ARat_Base_BP_C:Respawn() end

function ARat_Base_BP_C:RunForHideyHole() end

---@param DA UENVControlData_C
function ARat_Base_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ARat_Base_BP_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function ARat_Base_BP_C:ShouldNotBeTargetedByHoming(Tags) end

function ARat_Base_BP_C:Spook() end

function ARat_Base_BP_C:StartRespawnTimer() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ARat_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ARat_Base_BP_C:UpdateFogDAValues() end

function ARat_Base_BP_C:UserConstructionScript() end

---@param InVec FVector
---@param GroundPos FVector
---@param FoundGround boolean
---@param FoundWater boolean
---@param WaterPos FVector
ARat_Base_BP_C['Trace for Ground'] = function(self, InVec, GroundPos, FoundGround, FoundWater, WaterPos) end
