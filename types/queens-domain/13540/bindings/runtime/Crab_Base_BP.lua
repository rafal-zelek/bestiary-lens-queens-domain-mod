---@meta

---@class ACrab_Base_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MoveAudio UAudioComponent
---@field ActorUROManager UActorUROManager
---@field CrabCritter USkeletalMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field StartPos FTransform
---@field Trigger ACritter_SpookTrigger_C
---@field Dead boolean
---@field RespawnTime float
---@field TargetPoint AActor
---@field Speed float
---@field LocalDT float
---@field Spooked boolean
---@field CurrentlyThreatened boolean
---@field RunSide boolean
---@field RandomPosOffset FVector
---@field FogAlpha UFS_FogData_Base
---@field FogBeta UFS_FogData_Base
---@field DisableFogVertexColor boolean
---@field WaterPhysmat UPhysicalMaterial
---@field fallspeed float
local ACrab_Base_BP_C = {}

function ACrab_Base_BP_C:CancelRespawnTimer() end

---@param Violence boolean
function ACrab_Base_BP_C:CustomEvent_0(Violence) end

function ACrab_Base_BP_C:EndSpook() end

---@param EntryPoint int32
function ACrab_Base_BP_C:ExecuteUbergraph_Crab_Base_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ACrab_Base_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function ACrab_Base_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ACrab_Base_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ACrab_Base_BP_C:GetTargetLoc() end

function ACrab_Base_BP_C:Kill() end

---@param NotifyName FName
function ACrab_Base_BP_C:OnBlendOut_6475818F4AC207CAB3B47FAED94A13BD(NotifyName) end

---@param NotifyName FName
function ACrab_Base_BP_C:OnCompleted_6475818F4AC207CAB3B47FAED94A13BD(NotifyName) end

---@param NotifyName FName
function ACrab_Base_BP_C:OnInterrupted_6475818F4AC207CAB3B47FAED94A13BD(NotifyName) end

---@param NotifyName FName
function ACrab_Base_BP_C:OnNotifyBegin_6475818F4AC207CAB3B47FAED94A13BD(NotifyName) end

---@param NotifyName FName
function ACrab_Base_BP_C:OnNotifyEnd_6475818F4AC207CAB3B47FAED94A13BD(NotifyName) end

function ACrab_Base_BP_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function ACrab_Base_BP_C:ReceiveEndPlay(EndPlayReason) end

---@param DeltaSeconds float
function ACrab_Base_BP_C:ReceiveTick(DeltaSeconds) end

function ACrab_Base_BP_C:Respawn() end

---@param DA UENVControlData_C
function ACrab_Base_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ACrab_Base_BP_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function ACrab_Base_BP_C:ShouldNotBeTargetedByHoming(Tags) end

function ACrab_Base_BP_C:Spook() end

function ACrab_Base_BP_C:StartRespawnTimer() end

---@param Violence boolean
function ACrab_Base_BP_C:Threatened(Violence) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ACrab_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ACrab_Base_BP_C:Unthreatened() end

function ACrab_Base_BP_C:UpdateFogDAValues() end

function ACrab_Base_BP_C:UserConstructionScript() end

---@param InVec FVector
---@param GroundPos FVector
---@param FoundGround boolean
---@param FoundWater boolean
---@param WaterPos FVector
ACrab_Base_BP_C['Trace for Ground'] = function(self, InVec, GroundPos, FoundGround, FoundWater, WaterPos) end
