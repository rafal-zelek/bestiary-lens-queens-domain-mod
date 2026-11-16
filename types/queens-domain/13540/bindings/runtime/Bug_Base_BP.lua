---@meta

---@class ABug_Base_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MoveAudio UAudioComponent
---@field PreviewEndPoint USkeletalMeshComponent
---@field ActorUROManager UActorUROManager
---@field Spline USplineComponent
---@field Mesh USkeletalMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Dead boolean
---@field RespawnDuration float
---@field StartPos FTransform
---@field EndPos FTransform
---@field AtEndPoint boolean
---@field Flying boolean
---@field AnimStartPos FTransform
---@field FlightSpeed float
---@field StartDist float
---@field Trigger ACritter_SpookTrigger_C
---@field FogAlpha UFS_FogData_Base
---@field FogBeta UFS_FogData_Base
---@field DisableFogVertexColor boolean
local ABug_Base_BP_C = {}

function ABug_Base_BP_C:CancelRespawnTimer() end

---@param Violence boolean
function ABug_Base_BP_C:CustomEvent_0(Violence) end

---@param EntryPoint int32
function ABug_Base_BP_C:ExecuteUbergraph_Bug_Base_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ABug_Base_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param bPosOverridden boolean
function ABug_Base_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ABug_Base_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param InputPin float
function ABug_Base_BP_C:GetTargetPosAtDist(InputPin) end

function ABug_Base_BP_C:Kill() end

---@param NotifyName FName
function ABug_Base_BP_C:OnBlendOut_C461D20941327A879B32399AA0D03296(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnBlendOut_CD70482E4742E22E08C25BB6C9F9758C(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnCompleted_C461D20941327A879B32399AA0D03296(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnCompleted_CD70482E4742E22E08C25BB6C9F9758C(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnInterrupted_C461D20941327A879B32399AA0D03296(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnInterrupted_CD70482E4742E22E08C25BB6C9F9758C(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnNotifyBegin_C461D20941327A879B32399AA0D03296(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnNotifyBegin_CD70482E4742E22E08C25BB6C9F9758C(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnNotifyEnd_C461D20941327A879B32399AA0D03296(NotifyName) end

---@param NotifyName FName
function ABug_Base_BP_C:OnNotifyEnd_CD70482E4742E22E08C25BB6C9F9758C(NotifyName) end

function ABug_Base_BP_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function ABug_Base_BP_C:ReceiveEndPlay(EndPlayReason) end

function ABug_Base_BP_C:Respawn() end

---@param DA UENVControlData_C
function ABug_Base_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ABug_Base_BP_C:SetBetaFogDA(DA) end

---@param Tags FGameplayTagContainer
function ABug_Base_BP_C:ShouldNotBeTargetedByHoming(Tags) end

function ABug_Base_BP_C:Spook() end

function ABug_Base_BP_C:StartRespawnTimer() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABug_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ABug_Base_BP_C:UpdateFogDAValues() end

function ABug_Base_BP_C:UserConstructionScript() end
