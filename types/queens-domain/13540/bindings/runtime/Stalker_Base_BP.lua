---@meta

---@class AStalker_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RefractionMesh USkeletalMeshComponent
---@field InvisibilityFade_Fade_3EB724534C5FBB17A6C9BCA68C209931 float
---@field InvisibilityFade__Direction_3EB724534C5FBB17A6C9BCA68C209931 ETimelineDirection::Type
---@field InvisibilityFade UTimelineComponent
---@field Projectile TSubclassOf<ASpider_Projectile_C>
---@field RangedAttacking boolean
---@field OriginalMeshPos FVector
---@field TrapMeshPos FVector
---@field TrapLaunchTimePermeterTravelled float
---@field LaunchTrapMode boolean
---@field FlyingTrap boolean
---@field TargetFlyingTrapDir FVector
---@field FlyingTrapSpeed float
---@field ActivatingTrap boolean
---@field MaxTrapTriggerDelay float
---@field LaunchTrapAttackRange float
---@field CurrentSilk UNiagaraComponent
---@field Invisible boolean
---@field CurrentInvisFade float
---@field AllowInvisJumpTime float
local AStalker_Base_BP_C = {}

---@param Damaged boolean
function AStalker_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AStalker_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function AStalker_Base_BP_C:CanUseAttack(bIgnoreWeight, Index) end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function AStalker_Base_BP_C:CustomEvent_0(QueryInstance, QueryStatus) end

function AStalker_Base_BP_C:DisableInvisibility() end

function AStalker_Base_BP_C:EnableInvisibility() end

---@param Mode EnemyBehaviourMode::Type
function AStalker_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AStalker_Base_BP_C:ExecuteUbergraph_Stalker_Base_BP(EntryPoint) end

function AStalker_Base_BP_C:InvisibilityFade__FinishedFunc() end

function AStalker_Base_BP_C:InvisibilityFade__UpdateFunc() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AStalker_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnBlendOut_79DA7E144660573EA2E551AA566F3325(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnBlendOut_8E058C414C6B6ED6FDF4D9B48C2AB092(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnBlendOut_EE4D3CC04C43FE729D6653AE945FF953(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A3614D0A8(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AEEBACE88(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnCompleted_79DA7E144660573EA2E551AA566F3325(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnCompleted_8E058C414C6B6ED6FDF4D9B48C2AB092(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnCompleted_EE4D3CC04C43FE729D6653AE945FF953(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A3614D0A8(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AEEBACE88(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnInterrupted_79DA7E144660573EA2E551AA566F3325(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnInterrupted_8E058C414C6B6ED6FDF4D9B48C2AB092(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnInterrupted_EE4D3CC04C43FE729D6653AE945FF953(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A3614D0A8(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AEEBACE88(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyBegin_79DA7E144660573EA2E551AA566F3325(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyBegin_8E058C414C6B6ED6FDF4D9B48C2AB092(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyBegin_EE4D3CC04C43FE729D6653AE945FF953(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A3614D0A8(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AEEBACE88(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyEnd_79DA7E144660573EA2E551AA566F3325(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyEnd_8E058C414C6B6ED6FDF4D9B48C2AB092(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyEnd_EE4D3CC04C43FE729D6653AE945FF953(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A3614D0A8(NotifyName) end

---@param NotifyName FName
function AStalker_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AEEBACE88(NotifyName) end

function AStalker_Base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AStalker_Base_BP_C:ReceiveTick(DeltaSeconds) end

---@param Param float
function AStalker_Base_BP_C:SetCharFXFade(Param) end

---@param Spawner AFishManerSpawner_Base_C
function AStalker_Base_BP_C:SetPreviewTrapModeLoc(Spawner) end

---@param Target FVector
function AStalker_Base_BP_C:TeleportFromJump(Target) end

function AStalker_Base_BP_C:TickBehaviour() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AStalker_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param Selection EnemyBehaviourMode::Type
function AStalker_Base_BP_C:UpdatePreviewMatState(Selection) end

function AStalker_Base_BP_C:UserConstructionScript() end

AStalker_Base_BP_C['Configure Behaviour Mode'] = function(self) end
