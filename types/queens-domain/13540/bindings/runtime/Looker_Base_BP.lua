---@meta

---@class ALooker_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Capsule UCapsuleComponent
---@field AttackTL_Pogress_84C4686B4CA0F15BF5CCA3A14587AE96 float
---@field AttackTL__Direction_84C4686B4CA0F15BF5CCA3A14587AE96 ETimelineDirection::Type
---@field AttackTL UTimelineComponent
---@field ActiveLaser boolean
---@field LaserTargetStart FVector
---@field LaserTargetEnd FVector
---@field CurrentLaserTarget FVector
---@field CurrentLaser UNiagaraComponent
---@field AlreadyHitPlayer boolean
---@field LaserStatusEffect EnemyStatusType::Type
---@field TrackingStrength float
---@field BeamPFX UNiagaraSystem
---@field LaserDamageActive boolean
---@field LaserSFX UAudioComponent
---@field LaserSFXPos float
local ALooker_Base_BP_C = {}

function ALooker_Base_BP_C:Aggrod() end

function ALooker_Base_BP_C:AttackTL__FinishedFunc() end

function ALooker_Base_BP_C:AttackTL__StartLasering__EventFunc() end

function ALooker_Base_BP_C:AttackTL__UpdateFunc() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALooker_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Start FVector
---@param End FVector
function ALooker_Base_BP_C:CalculateHorizontalLaserTarget(Start, End) end

function ALooker_Base_BP_C:CancelLaser() end

function ALooker_Base_BP_C:CheckChase() end

function ALooker_Base_BP_C:ContinueWandering() end

---@param EntryPoint int32
function ALooker_Base_BP_C:ExecuteUbergraph_Looker_Base_BP(EntryPoint) end

function ALooker_Base_BP_C:GetDropLocation() end

function ALooker_Base_BP_C:GetForwardFacingVectorForAI() end

---@param Start FVector
---@param End FVector
---@param Dir FVector
function ALooker_Base_BP_C:GetLaserParams(Start, End, Dir) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ALooker_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

function ALooker_Base_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ALooker_Base_BP_C:OnBlendOut_3B0C29164CB3D390E21C5DBC9A432750(NotifyName) end

---@param NotifyName FName
function ALooker_Base_BP_C:OnCompleted_3B0C29164CB3D390E21C5DBC9A432750(NotifyName) end

---@param NotifyName FName
function ALooker_Base_BP_C:OnInterrupted_3B0C29164CB3D390E21C5DBC9A432750(NotifyName) end

---@param NotifyName FName
function ALooker_Base_BP_C:OnNotifyBegin_3B0C29164CB3D390E21C5DBC9A432750(NotifyName) end

---@param NotifyName FName
function ALooker_Base_BP_C:OnNotifyEnd_3B0C29164CB3D390E21C5DBC9A432750(NotifyName) end

---@param Duration float
function ALooker_Base_BP_C:Paralyze(Duration) end

function ALooker_Base_BP_C:Stagger() end

function ALooker_Base_BP_C:StartLaser() end

function ALooker_Base_BP_C:StartLaserDamage() end

function ALooker_Base_BP_C:StartWandering() end

function ALooker_Base_BP_C:UnAggrod() end

ALooker_Base_BP_C['Do Laser Damage Trace and Update PFX'] = function(self) end

---@param Target float
ALooker_Base_BP_C['InterpSFX To Pos'] = function(self, Target) end

ALooker_Base_BP_C['Update Rotation'] = function(self) end
