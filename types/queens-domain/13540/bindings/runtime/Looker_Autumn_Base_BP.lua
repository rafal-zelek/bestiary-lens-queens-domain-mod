---@meta

---@class ALooker_Autumn_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AttackTL_Pogress_8B596F2D4B6B78DF4AB3FF84B03F4FF9 float
---@field AttackTL__Direction_8B596F2D4B6B78DF4AB3FF84B03F4FF9 ETimelineDirection::Type
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
local ALooker_Autumn_Base_BP_C = {}

function ALooker_Autumn_Base_BP_C:Aggrod() end

function ALooker_Autumn_Base_BP_C:AttackTL__FinishedFunc() end

function ALooker_Autumn_Base_BP_C:AttackTL__StartLasering__EventFunc() end

function ALooker_Autumn_Base_BP_C:AttackTL__UpdateFunc() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALooker_Autumn_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Start FVector
---@param End FVector
function ALooker_Autumn_Base_BP_C:CalculateHorizontalLaserTarget(Start, End) end

function ALooker_Autumn_Base_BP_C:CancelLaser() end

function ALooker_Autumn_Base_BP_C:CheckChase() end

function ALooker_Autumn_Base_BP_C:ContinueWandering() end

---@param EntryPoint int32
function ALooker_Autumn_Base_BP_C:ExecuteUbergraph_Looker_Autumn_Base_BP(EntryPoint) end

function ALooker_Autumn_Base_BP_C:GetForwardFacingVectorForAI() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ALooker_Autumn_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

function ALooker_Autumn_Base_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnBlendOut_304E43EC4A8E61F0A66C4F85BED5AAAD(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnBlendOut_ABAEA13D441FED3D2A4DA3BDE80A9D76(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnCompleted_304E43EC4A8E61F0A66C4F85BED5AAAD(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnCompleted_ABAEA13D441FED3D2A4DA3BDE80A9D76(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnInterrupted_304E43EC4A8E61F0A66C4F85BED5AAAD(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnInterrupted_ABAEA13D441FED3D2A4DA3BDE80A9D76(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnNotifyBegin_304E43EC4A8E61F0A66C4F85BED5AAAD(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnNotifyBegin_ABAEA13D441FED3D2A4DA3BDE80A9D76(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnNotifyEnd_304E43EC4A8E61F0A66C4F85BED5AAAD(NotifyName) end

---@param NotifyName FName
function ALooker_Autumn_Base_BP_C:OnNotifyEnd_ABAEA13D441FED3D2A4DA3BDE80A9D76(NotifyName) end

---@param Duration float
function ALooker_Autumn_Base_BP_C:Paralyze(Duration) end

function ALooker_Autumn_Base_BP_C:Stagger() end

function ALooker_Autumn_Base_BP_C:StartLaser() end

function ALooker_Autumn_Base_BP_C:StartLaserDamage() end

function ALooker_Autumn_Base_BP_C:StartWandering() end

function ALooker_Autumn_Base_BP_C:UnAggrod() end

ALooker_Autumn_Base_BP_C['Do Laser Damage Trace and Update PFX'] = function(self) end

ALooker_Autumn_Base_BP_C['Update Rotation'] = function(self) end
