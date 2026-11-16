---@meta

---@class AStalker_Miniboss_BP_C : AStalker_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BodyCollision UBoxComponent
---@field Blood_Dissolve UNiagaraComponent
---@field BloodPool AEnemyBase_C
---@field StartDirection FVector
---@field ShouldEndDash boolean
---@field DashingActive boolean
---@field MovementStartLocl FVector
---@field MovementDestLoc FVector
---@field DissolveProgress float
---@field dASHYAW float
---@field RemainingForceSolidityHP float
local AStalker_Miniboss_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AStalker_Miniboss_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AStalker_Miniboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function AStalker_Miniboss_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function AStalker_Miniboss_BP_C:CancelDashAttack() end

function AStalker_Miniboss_BP_C:CancelRelocate() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AStalker_Miniboss_BP_C:CustomEvent(NoRewards, SupressDeathSound) end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function AStalker_Miniboss_BP_C:CustomEvent_1(QueryInstance, QueryStatus) end

---@param ReceivedHPDamage float
function AStalker_Miniboss_BP_C:DamageHP(ReceivedHPDamage) end

function AStalker_Miniboss_BP_C:DashHitSoemthing() end

function AStalker_Miniboss_BP_C:Dissolve() end

function AStalker_Miniboss_BP_C:DoDashFromCurrentPos() end

---@param EntryPoint int32
function AStalker_Miniboss_BP_C:ExecuteUbergraph_Stalker_Miniboss_BP(EntryPoint) end

function AStalker_Miniboss_BP_C:ForcedDissolve() end

function AStalker_Miniboss_BP_C:GetChargeLocationPastPlayer() end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnBlendOut_AFA0ED2E45D54E113A3C52BB61457121(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnBlendOut_D92768664EA0912BEDF38F8ABDF70E37(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A4DF6AA50(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnCompleted_AFA0ED2E45D54E113A3C52BB61457121(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnCompleted_D92768664EA0912BEDF38F8ABDF70E37(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A4DF6AA50(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnInterrupted_AFA0ED2E45D54E113A3C52BB61457121(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnInterrupted_D92768664EA0912BEDF38F8ABDF70E37(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A4DF6AA50(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnNotifyBegin_AFA0ED2E45D54E113A3C52BB61457121(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnNotifyBegin_D92768664EA0912BEDF38F8ABDF70E37(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A4DF6AA50(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnNotifyEnd_AFA0ED2E45D54E113A3C52BB61457121(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnNotifyEnd_D92768664EA0912BEDF38F8ABDF70E37(NotifyName) end

---@param NotifyName FName
function AStalker_Miniboss_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A4DF6AA50(NotifyName) end

function AStalker_Miniboss_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AStalker_Miniboss_BP_C:ReceiveTick(DeltaSeconds) end

function AStalker_Miniboss_BP_C:ResetForceSubmergeHp() end

function AStalker_Miniboss_BP_C:Stagger() end

function AStalker_Miniboss_BP_C:StartDash() end

function AStalker_Miniboss_BP_C:StartDashAttack() end

function AStalker_Miniboss_BP_C:StopDash() end

function AStalker_Miniboss_BP_C:StopDashEndWait() end

function AStalker_Miniboss_BP_C:Submerge() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AStalker_Miniboss_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AStalker_Miniboss_BP_C:UnDissolve() end
