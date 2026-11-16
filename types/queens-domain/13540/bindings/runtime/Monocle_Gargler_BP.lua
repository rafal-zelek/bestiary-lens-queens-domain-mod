---@meta

---@class AMonocle_Gargler_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Monocle UEnemyAttachmentMesh_C
---@field WeaponDissolveIn_NewTrack_0_D05484184B9718A657FE469D822358CD float
---@field WeaponDissolveIn__Direction_D05484184B9718A657FE469D822358CD ETimelineDirection::Type
---@field WeaponDissolveIn UTimelineComponent
---@field HitsInTrapMode int32
---@field Fleeing boolean
---@field CurrentlyRunningFleeQuery UEnvQueryInstanceBlueprintWrapper
---@field FleeChasing boolean
local AMonocle_Gargler_BP_C = {}

---@param Damaged boolean
function AMonocle_Gargler_BP_C:ActivateTrap(Damaged) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AMonocle_Gargler_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AMonocle_Gargler_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AMonocle_Gargler_BP_C:CancelFleeing() end

function AMonocle_Gargler_BP_C:CheckChase() end

function AMonocle_Gargler_BP_C:ContinueRunningAway() end

---@param Mode EnemyBehaviourMode::Type
function AMonocle_Gargler_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AMonocle_Gargler_BP_C:ExecuteUbergraph_Monocle_Gargler_BP(EntryPoint) end

function AMonocle_Gargler_BP_C:HitPlayer() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AMonocle_Gargler_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnBlendOut_3188D6E1449AC4158151D481E5ECFF4F(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnBlendOut_4388F8FF40CC8D191454A2A3B35256E4(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnBlendOut_5D066FAA41486D63BE3ED79A694C377D(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnBlendOut_A85B7FB245E2F18D005208AD538B9C71(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnBlendOut_C062F09642A2FD3855C85AAC07EF8FCE(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnBlendOut_EC6A081642E9223EFF9FF1B6D957C226(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnCompleted_3188D6E1449AC4158151D481E5ECFF4F(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnCompleted_4388F8FF40CC8D191454A2A3B35256E4(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnCompleted_5D066FAA41486D63BE3ED79A694C377D(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnCompleted_A85B7FB245E2F18D005208AD538B9C71(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnCompleted_C062F09642A2FD3855C85AAC07EF8FCE(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnCompleted_EC6A081642E9223EFF9FF1B6D957C226(NotifyName) end

---@param MovementResult EPathFollowingResult::Type
function AMonocle_Gargler_BP_C:OnFail_184489BE4A8F8E6EF3185FA3CBF02039(MovementResult) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnInterrupted_3188D6E1449AC4158151D481E5ECFF4F(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnInterrupted_4388F8FF40CC8D191454A2A3B35256E4(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnInterrupted_5D066FAA41486D63BE3ED79A694C377D(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnInterrupted_A85B7FB245E2F18D005208AD538B9C71(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnInterrupted_C062F09642A2FD3855C85AAC07EF8FCE(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnInterrupted_EC6A081642E9223EFF9FF1B6D957C226(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyBegin_3188D6E1449AC4158151D481E5ECFF4F(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyBegin_4388F8FF40CC8D191454A2A3B35256E4(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyBegin_5D066FAA41486D63BE3ED79A694C377D(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyBegin_A85B7FB245E2F18D005208AD538B9C71(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyBegin_C062F09642A2FD3855C85AAC07EF8FCE(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyBegin_EC6A081642E9223EFF9FF1B6D957C226(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyEnd_3188D6E1449AC4158151D481E5ECFF4F(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyEnd_4388F8FF40CC8D191454A2A3B35256E4(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyEnd_5D066FAA41486D63BE3ED79A694C377D(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyEnd_A85B7FB245E2F18D005208AD538B9C71(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyEnd_C062F09642A2FD3855C85AAC07EF8FCE(NotifyName) end

---@param NotifyName FName
function AMonocle_Gargler_BP_C:OnNotifyEnd_EC6A081642E9223EFF9FF1B6D957C226(NotifyName) end

---@param MovementResult EPathFollowingResult::Type
function AMonocle_Gargler_BP_C:OnSuccess_184489BE4A8F8E6EF3185FA3CBF02039(MovementResult) end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function AMonocle_Gargler_BP_C:RunAwayQueryDone(QueryInstance, QueryStatus) end

---@param Dissolve float
function AMonocle_Gargler_BP_C:SetWeaponDissolve(Dissolve) end

function AMonocle_Gargler_BP_C:StartFleeing() end

function AMonocle_Gargler_BP_C:StopRunAwayPathing() end

function AMonocle_Gargler_BP_C:TickBehaviour() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AMonocle_Gargler_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AMonocle_Gargler_BP_C:UpdateInitialBehaviour() end

function AMonocle_Gargler_BP_C:UserConstructionScript() end

function AMonocle_Gargler_BP_C:WeaponDissolveIn__FinishedFunc() end

function AMonocle_Gargler_BP_C:WeaponDissolveIn__UpdateFunc() end

AMonocle_Gargler_BP_C['Start Run Away Pathing'] = function(self) end

AMonocle_Gargler_BP_C['Update Rotation'] = function(self) end
