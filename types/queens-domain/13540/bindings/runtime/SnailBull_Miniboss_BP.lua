---@meta

---@class ASnailBull_Miniboss_BP_C : ASnailBull_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RapidMovementSPlashes UNiagaraComponent
---@field Blood_Dissolve UNiagaraComponent
---@field BloodPool AEnemyBase_C
---@field RemainingCharges int32
---@field MovementStartLocl FVector
---@field MovementDestLoc FVector
---@field DissolveProgress float
---@field RemainingForceSolidityHP float
local ASnailBull_Miniboss_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASnailBull_Miniboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function ASnailBull_Miniboss_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function ASnailBull_Miniboss_BP_C:CancelRushAttack() end

function ASnailBull_Miniboss_BP_C:CancelRushmovement() end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function ASnailBull_Miniboss_BP_C:CustomEvent_0(QueryInstance, QueryStatus) end

---@param ReceivedHPDamage float
function ASnailBull_Miniboss_BP_C:DamageHP(ReceivedHPDamage) end

function ASnailBull_Miniboss_BP_C:Dissolve() end

function ASnailBull_Miniboss_BP_C:DoMultiCharge() end

function ASnailBull_Miniboss_BP_C:DoSingleCharge() end

---@param EntryPoint int32
function ASnailBull_Miniboss_BP_C:ExecuteUbergraph_SnailBull_Miniboss_BP(EntryPoint) end

function ASnailBull_Miniboss_BP_C:ForcedDissolve() end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnBlendOut_0ED6E55F436D76319616149DA42F6C3D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnBlendOut_BBD7F3C34C8A21C2BAA170923A8F0FF1(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A94D667E4(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnCompleted_0ED6E55F436D76319616149DA42F6C3D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnCompleted_BBD7F3C34C8A21C2BAA170923A8F0FF1(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A94D667E4(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnInterrupted_0ED6E55F436D76319616149DA42F6C3D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnInterrupted_BBD7F3C34C8A21C2BAA170923A8F0FF1(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A94D667E4(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnNotifyBegin_0ED6E55F436D76319616149DA42F6C3D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnNotifyBegin_BBD7F3C34C8A21C2BAA170923A8F0FF1(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A94D667E4(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnNotifyEnd_0ED6E55F436D76319616149DA42F6C3D(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnNotifyEnd_BBD7F3C34C8A21C2BAA170923A8F0FF1(NotifyName) end

---@param NotifyName FName
function ASnailBull_Miniboss_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A94D667E4(NotifyName) end

function ASnailBull_Miniboss_BP_C:ReceiveBeginPlay() end

function ASnailBull_Miniboss_BP_C:RelocateToChargeTargetLocation() end

function ASnailBull_Miniboss_BP_C:ResetForceSubmergeHp() end

function ASnailBull_Miniboss_BP_C:StopDrillSteeringLogic() end

function ASnailBull_Miniboss_BP_C:Submerge() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ASnailBull_Miniboss_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ASnailBull_Miniboss_BP_C:UnDissolve() end
