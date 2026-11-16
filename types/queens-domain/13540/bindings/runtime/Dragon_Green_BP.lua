---@meta

---@class ADragon_Green_BP_C : ADragon_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Dragon_MouthFire_Loop UNiagaraComponent
---@field MouthFireGlow UPointLightComponent
---@field DissolveIn_Dissolve_D1F0AF3F4E7FEAC7FAC3A7A37D6F32B3 float
---@field DissolveIn__Direction_D1F0AF3F4E7FEAC7FAC3A7A37D6F32B3 ETimelineDirection::Type
---@field DissolveIn UTimelineComponent
---@field MountedLord AJosamiLord_Green_BP_C
---@field FOrceGoToAir boolean
---@field Attacking FDragon_Green_BP_CAttacking
local ADragon_Green_BP_C = {}

---@param Damaged boolean
function ADragon_Green_BP_C:ActivateTrap(Damaged) end

---@param AttackIndex int32
---@param AttackKey FName
function ADragon_Green_BP_C:Attacking__DelegateSignature(AttackIndex, AttackKey) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ADragon_Green_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function ADragon_Green_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function ADragon_Green_BP_C:CheckForSplit() end

function ADragon_Green_BP_C:DissolveIn__FinishedFunc() end

function ADragon_Green_BP_C:DissolveIn__UpdateFunc() end

function ADragon_Green_BP_C:DoFlyingStateEntry() end

---@param Mode EnemyBehaviourMode::Type
function ADragon_Green_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ADragon_Green_BP_C:ExecuteUbergraph_Dragon_Green_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ADragon_Green_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param AttackIndex int32
---@param BaseWeight float
function ADragon_Green_BP_C:ModifyAttackWeight(AttackIndex, BaseWeight) end

---@param NotifyName FName
function ADragon_Green_BP_C:OnBlendOut_96835D3B46F0073F7332FFAC83BADB6F(NotifyName) end

---@param NotifyName FName
function ADragon_Green_BP_C:OnCompleted_96835D3B46F0073F7332FFAC83BADB6F(NotifyName) end

---@param NotifyName FName
function ADragon_Green_BP_C:OnInterrupted_96835D3B46F0073F7332FFAC83BADB6F(NotifyName) end

---@param NotifyName FName
function ADragon_Green_BP_C:OnNotifyBegin_96835D3B46F0073F7332FFAC83BADB6F(NotifyName) end

---@param NotifyName FName
function ADragon_Green_BP_C:OnNotifyEnd_96835D3B46F0073F7332FFAC83BADB6F(NotifyName) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ADragon_Green_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
