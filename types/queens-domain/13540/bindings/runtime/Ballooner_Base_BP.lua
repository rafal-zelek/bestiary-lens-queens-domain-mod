---@meta

---@class ABallooner_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GlowSpriteComp UGlowSpriteComp_C
---@field AttackTL_LinearProgress_2BBBA7C944C0566A3985CBB21E244ED9 float
---@field AttackTL_Pogress_2BBBA7C944C0566A3985CBB21E244ED9 float
---@field AttackTL__Direction_2BBBA7C944C0566A3985CBB21E244ED9 ETimelineDirection::Type
---@field AttackTL UTimelineComponent
---@field ActiveLaser boolean
---@field LaserTargetStart FVector
---@field LaserTargetEnd FVector
---@field CurrentLaserTarget FVector
---@field CurrentLaser UNiagaraComponent
---@field AlreadyHitPlayer boolean
---@field LaserStatusEffect EnemyStatusType::Type
---@field BeamPFX UNiagaraSystem
---@field LaserDamageActive boolean
---@field TrackingStrength float
---@field SuccessfullyAppliedDebuffs float
---@field HasDebuffs float
---@field PlayerRecentlyUsedCharge boolean
---@field Beam_EmerPFX_0 UNiagaraSystem
---@field AOE_FX UNiagaraSystem
local ABallooner_Base_BP_C = {}

function ABallooner_Base_BP_C:Aggrod() end

function ABallooner_Base_BP_C:AttackTL__FinishedFunc() end

function ABallooner_Base_BP_C:AttackTL__StartLasering__EventFunc() end

function ABallooner_Base_BP_C:AttackTL__UpdateFunc() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABallooner_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABallooner_Base_BP_C:CancelLaser() end

function ABallooner_Base_BP_C:CheckChase() end

function ABallooner_Base_BP_C:ConsumePlayerChargeUse() end

function ABallooner_Base_BP_C:ContinueWandering() end

function ABallooner_Base_BP_C:DoAOEAttack() end

function ABallooner_Base_BP_C:DoEmergencyLaser() end

function ABallooner_Base_BP_C:DoNormalLaserAttack() end

---@param EntryPoint int32
function ABallooner_Base_BP_C:ExecuteUbergraph_Ballooner_Base_BP(EntryPoint) end

function ABallooner_Base_BP_C:GetForwardFacingVectorForAI() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABallooner_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

function ABallooner_Base_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnBlendOut_3EC87757419925A761CFCFA674D1FFBE(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnBlendOut_A7910CB843EF84182AC7498E1F273A4B(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnBlendOut_AD3C92D147132D75B53A2886A3A4583D(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnCompleted_3EC87757419925A761CFCFA674D1FFBE(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnCompleted_A7910CB843EF84182AC7498E1F273A4B(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnCompleted_AD3C92D147132D75B53A2886A3A4583D(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnInterrupted_3EC87757419925A761CFCFA674D1FFBE(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnInterrupted_A7910CB843EF84182AC7498E1F273A4B(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnInterrupted_AD3C92D147132D75B53A2886A3A4583D(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnNotifyBegin_3EC87757419925A761CFCFA674D1FFBE(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnNotifyBegin_A7910CB843EF84182AC7498E1F273A4B(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnNotifyBegin_AD3C92D147132D75B53A2886A3A4583D(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnNotifyEnd_3EC87757419925A761CFCFA674D1FFBE(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnNotifyEnd_A7910CB843EF84182AC7498E1F273A4B(NotifyName) end

---@param NotifyName FName
function ABallooner_Base_BP_C:OnNotifyEnd_AD3C92D147132D75B53A2886A3A4583D(NotifyName) end

---@param Duration float
function ABallooner_Base_BP_C:Paralyze(Duration) end

---@param Grounded boolean
function ABallooner_Base_BP_C:PlayerUsedCharge(Grounded) end

function ABallooner_Base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ABallooner_Base_BP_C:ReceiveTick(DeltaSeconds) end

function ABallooner_Base_BP_C:RegisterPlayerUsedCharge() end

function ABallooner_Base_BP_C:Stagger() end

function ABallooner_Base_BP_C:StartLaser() end

function ABallooner_Base_BP_C:StartLaserDamage() end

function ABallooner_Base_BP_C:StartWandering() end

function ABallooner_Base_BP_C:TickBehaviour() end

function ABallooner_Base_BP_C:UnAggrod() end

---@param Start FVector
---@param End FVector
ABallooner_Base_BP_C['Calculate Laser Targets'] = function(self, Start, End) end

ABallooner_Base_BP_C['Do Laser Damage Trace and Update PFX'] = function(self) end

---@param SkipCurrentAttackCD boolean
---@param Don_tSetAttackingFlag boolean
ABallooner_Base_BP_C['End Attack State'] = function(self, SkipCurrentAttackCD, Don_tSetAttackingFlag) end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
ABallooner_Base_BP_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end

ABallooner_Base_BP_C['Update Rotation'] = function(self) end
