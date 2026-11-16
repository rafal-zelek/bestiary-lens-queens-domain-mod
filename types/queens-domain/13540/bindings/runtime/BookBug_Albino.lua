---@meta

---@class ABookBug_Albino_C : ABookBug_base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitsInTrapMode int32
---@field CurrentlyRunningmoveQuery UEnvQueryInstanceBlueprintWrapper
---@field RunAwayEnvQuery UEnvQuery
local ABookBug_Albino_C = {}

function ABookBug_Albino_C:Aggrod() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABookBug_Albino_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABookBug_Albino_C:CheckChase() end

function ABookBug_Albino_C:ContinueRunningAway() end

---@param EntryPoint int32
function ABookBug_Albino_C:ExecuteUbergraph_BookBug_Albino(EntryPoint) end

function ABookBug_Albino_C:MoveTowardsPlayer() end

---@param MovementResult EPathFollowingResult::Type
function ABookBug_Albino_C:OnFail_74F57621448D55E55761D898B5A422FA(MovementResult) end

---@param MovementResult EPathFollowingResult::Type
function ABookBug_Albino_C:OnSuccess_74F57621448D55E55761D898B5A422FA(MovementResult) end

function ABookBug_Albino_C:ReceiveBeginPlay() end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function ABookBug_Albino_C:RunAwayQueryDone(QueryInstance, QueryStatus) end

function ABookBug_Albino_C:Stagger() end

function ABookBug_Albino_C:StaggerEnded() end

function ABookBug_Albino_C:StopAllMovement() end

function ABookBug_Albino_C:StopRunAwayPathing() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABookBug_Albino_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ABookBug_Albino_C:UnAggrod() end

ABookBug_Albino_C['Force Initial Chase'] = function(self) end

ABookBug_Albino_C['Start Run Away Pathing'] = function(self) end

ABookBug_Albino_C['Update Rotation'] = function(self) end
