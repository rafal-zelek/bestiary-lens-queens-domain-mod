---@meta

---@class AStoneRibber_BP_C : ARibber_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GasHitbox USphereComponent
local AStoneRibber_BP_C = {}

---@param Damaged boolean
function AStoneRibber_BP_C:ActivateTrap(Damaged) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AStoneRibber_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AStoneRibber_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Mode EnemyBehaviourMode::Type
function AStoneRibber_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AStoneRibber_BP_C:ExecuteUbergraph_StoneRibber_BP(EntryPoint) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnBlendOut_7777DABD433FB862F77B3B8F3F94B86B(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnBlendOut_C325DA0B4632C52F35DB5B8678C1EB81(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnCompleted_7777DABD433FB862F77B3B8F3F94B86B(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnCompleted_C325DA0B4632C52F35DB5B8678C1EB81(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnInterrupted_7777DABD433FB862F77B3B8F3F94B86B(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnInterrupted_C325DA0B4632C52F35DB5B8678C1EB81(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnNotifyBegin_7777DABD433FB862F77B3B8F3F94B86B(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnNotifyBegin_C325DA0B4632C52F35DB5B8678C1EB81(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnNotifyEnd_7777DABD433FB862F77B3B8F3F94B86B(NotifyName) end

---@param NotifyName FName
function AStoneRibber_BP_C:OnNotifyEnd_C325DA0B4632C52F35DB5B8678C1EB81(NotifyName) end

---@param DeltaSeconds float
function AStoneRibber_BP_C:ReceiveTick(DeltaSeconds) end

function AStoneRibber_BP_C:StatueifyCollision() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AStoneRibber_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AStoneRibber_BP_C:UnStatueifyCollision() end

function AStoneRibber_BP_C:UserConstructionScript() end
