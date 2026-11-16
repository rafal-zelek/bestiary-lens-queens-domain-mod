---@meta

---@class ALordly_Spiker_Miniboss_BP_C : ALordly_Spiker_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WheelerSpawner AFated_Wheeler_MinibossSpawner_C
---@field Attached boolean
---@field SpinningSFX UAudioComponent
---@field SuperArmored boolean
local ALordly_Spiker_Miniboss_BP_C = {}

---@param Damaged boolean
function ALordly_Spiker_Miniboss_BP_C:ActivateTrap(Damaged) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function ALordly_Spiker_Miniboss_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALordly_Spiker_Miniboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function ALordly_Spiker_Miniboss_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function ALordly_Spiker_Miniboss_BP_C:CancelComboAttack() end

function ALordly_Spiker_Miniboss_BP_C:CancelShootSelf() end

function ALordly_Spiker_Miniboss_BP_C:CartwheelToWheeler() end

function ALordly_Spiker_Miniboss_BP_C:Detach() end

function ALordly_Spiker_Miniboss_BP_C:DoShootSelfAttack() end

function ALordly_Spiker_Miniboss_BP_C:EndAttachment() end

function ALordly_Spiker_Miniboss_BP_C:EndComboAttackNormally() end

function ALordly_Spiker_Miniboss_BP_C:EndShootSelf() end

---@param Mode EnemyBehaviourMode::Type
function ALordly_Spiker_Miniboss_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ALordly_Spiker_Miniboss_BP_C:ExecuteUbergraph_Lordly_Spiker_Miniboss_BP(EntryPoint) end

function ALordly_Spiker_Miniboss_BP_C:FadeCurrentSpinFX() end

---@param TargetPlayer AActor
function ALordly_Spiker_Miniboss_BP_C:GetChaseTarget(TargetPlayer) end

---@param bOverride boolean
---@param Location FVector
function ALordly_Spiker_Miniboss_BP_C:GetRotationTargetLocationOverride(bOverride, Location) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ALordly_Spiker_Miniboss_BP_C:Kill(NoRewards, SupressDeathSound) end

function ALordly_Spiker_Miniboss_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnBlendOut_1FE0D4CB49C318279BDB8592E4D2165D(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnBlendOut_AD3E824A4D4E1B158845899F148AC367(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnBlendOut_B75D14D046AD7C9BFF3E69B7EF0C5FAA(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnBlendOut_C64D4F2843249F2F400B9CB311EC4C09(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnBlendOut_EE59EFF844A89E0F395E91B4F0B61B64(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnCompleted_1FE0D4CB49C318279BDB8592E4D2165D(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnCompleted_AD3E824A4D4E1B158845899F148AC367(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnCompleted_B75D14D046AD7C9BFF3E69B7EF0C5FAA(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnCompleted_C64D4F2843249F2F400B9CB311EC4C09(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnCompleted_EE59EFF844A89E0F395E91B4F0B61B64(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnInterrupted_1FE0D4CB49C318279BDB8592E4D2165D(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnInterrupted_AD3E824A4D4E1B158845899F148AC367(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnInterrupted_B75D14D046AD7C9BFF3E69B7EF0C5FAA(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnInterrupted_C64D4F2843249F2F400B9CB311EC4C09(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnInterrupted_EE59EFF844A89E0F395E91B4F0B61B64(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyBegin_1FE0D4CB49C318279BDB8592E4D2165D(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyBegin_AD3E824A4D4E1B158845899F148AC367(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyBegin_B75D14D046AD7C9BFF3E69B7EF0C5FAA(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyBegin_C64D4F2843249F2F400B9CB311EC4C09(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyBegin_EE59EFF844A89E0F395E91B4F0B61B64(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyEnd_1FE0D4CB49C318279BDB8592E4D2165D(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyEnd_AD3E824A4D4E1B158845899F148AC367(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyEnd_B75D14D046AD7C9BFF3E69B7EF0C5FAA(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyEnd_C64D4F2843249F2F400B9CB311EC4C09(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_Miniboss_BP_C:OnNotifyEnd_EE59EFF844A89E0F395E91B4F0B61B64(NotifyName) end

---@param Duration float
function ALordly_Spiker_Miniboss_BP_C:Paralyze(Duration) end

function ALordly_Spiker_Miniboss_BP_C:ReadyForAttach() end

function ALordly_Spiker_Miniboss_BP_C:Stagger() end
