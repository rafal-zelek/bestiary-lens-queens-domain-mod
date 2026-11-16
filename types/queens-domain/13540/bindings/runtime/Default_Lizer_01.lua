---@meta

---@class ADefault_Lizer_01_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_LizerCharm_SM UStaticMeshComponent
---@field Treasure UStaticMeshComponent
---@field Timeline_1_0_Fade_D8317E9C49E0CE8377EDC488F34D11C4 float
---@field Timeline_1_0__Direction_D8317E9C49E0CE8377EDC488F34D11C4 ETimelineDirection::Type
---@field Timeline_1_0 UTimelineComponent
---@field CurrentlyRunningmoveQuery UEnvQueryInstanceBlueprintWrapper
---@field LastCheckedPos FVector
---@field LockedIntoChaseMode boolean
---@field ItemToMatConverter TMap<UFS_ItemData_C, UMaterialInterface>
---@field RunAwayEnvQuery UEnvQuery
---@field DefaultEnemyMode boolean
---@field SkipDeathMontage boolean
---@field Condition boolean
local ADefault_Lizer_01_C = {}

function ADefault_Lizer_01_C:Aggrod() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ADefault_Lizer_01_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ADefault_Lizer_01_C:CheckChase() end

function ADefault_Lizer_01_C:ContinueRunningAway() end

function ADefault_Lizer_01_C:DieAnim() end

---@param Allow_Multi_Drop boolean
---@param Force boolean
function ADefault_Lizer_01_C:DropItem(Allow_Multi_Drop, Force) end

---@param EntryPoint int32
function ADefault_Lizer_01_C:ExecuteUbergraph_Default_Lizer_01(EntryPoint) end

---@param AggroSensitivity float
function ADefault_Lizer_01_C:GetAggroSensitivity(AggroSensitivity) end

---@param AggroRange float
function ADefault_Lizer_01_C:GetAwarenessConeMaxRange(AggroRange) end

function ADefault_Lizer_01_C:GetPotionDrop() end

function ADefault_Lizer_01_C:InSimpleDist() end

function ADefault_Lizer_01_C:IsSleeping() end

function ADefault_Lizer_01_C:LockIntoChaseMode() end

function ADefault_Lizer_01_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ADefault_Lizer_01_C:OnBlendOut_8FE1F35E4443CA1DEFDD5D9FD50101CB(NotifyName) end

---@param NotifyName FName
function ADefault_Lizer_01_C:OnCompleted_8FE1F35E4443CA1DEFDD5D9FD50101CB(NotifyName) end

---@param MovementResult EPathFollowingResult::Type
function ADefault_Lizer_01_C:OnFail_541929A84F5957A79D8466BA6AE753AB(MovementResult) end

---@param NotifyName FName
function ADefault_Lizer_01_C:OnInterrupted_8FE1F35E4443CA1DEFDD5D9FD50101CB(NotifyName) end

---@param NotifyName FName
function ADefault_Lizer_01_C:OnNotifyBegin_8FE1F35E4443CA1DEFDD5D9FD50101CB(NotifyName) end

---@param NotifyName FName
function ADefault_Lizer_01_C:OnNotifyEnd_8FE1F35E4443CA1DEFDD5D9FD50101CB(NotifyName) end

---@param MovementResult EPathFollowingResult::Type
function ADefault_Lizer_01_C:OnSuccess_541929A84F5957A79D8466BA6AE753AB(MovementResult) end

function ADefault_Lizer_01_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ADefault_Lizer_01_C:ReceiveTick(DeltaSeconds) end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function ADefault_Lizer_01_C:RunAwayQueryDone(QueryInstance, QueryStatus) end

function ADefault_Lizer_01_C:Stagger() end

function ADefault_Lizer_01_C:StaggerEnded() end

function ADefault_Lizer_01_C:StopAllMovement() end

function ADefault_Lizer_01_C:StopRunAwayPathing() end

function ADefault_Lizer_01_C:Timeline_1_0__FinishedFunc() end

function ADefault_Lizer_01_C:Timeline_1_0__NewTrack_1__EventFunc() end

function ADefault_Lizer_01_C:Timeline_1_0__UpdateFunc() end

function ADefault_Lizer_01_C:UnAggrod() end

function ADefault_Lizer_01_C:UpdatePotionMesh() end

function ADefault_Lizer_01_C:UserConstructionScript() end

ADefault_Lizer_01_C['Force Initial Chase'] = function(self) end

ADefault_Lizer_01_C['Start Run Away Pathing'] = function(self) end

ADefault_Lizer_01_C['Update Rotation'] = function(self) end
