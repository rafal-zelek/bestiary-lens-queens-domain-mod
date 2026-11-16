---@meta

---@class ABookBug_base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TrapHitbox USphereComponent
---@field ActivatingTrap boolean
---@field ShelfTrapAttackRange float
---@field FlyingTrap boolean
---@field TargetFlyingTrapDir FVector
---@field FlyingTrapSpeed float
---@field MaxTrapTriggerDelay float
local ABookBug_base_BP_C = {}

---@param Damaged boolean
function ABookBug_base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABookBug_base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Mode EnemyBehaviourMode::Type
function ABookBug_base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ABookBug_base_BP_C:ExecuteUbergraph_BookBug_base_BP(EntryPoint) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnBlendOut_17DBEC0A4227A331B4D6EAA1B9168868(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnBlendOut_2B8D943F463835EC51DD3C9764015C2F(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnBlendOut_43482355427A184598D948B4414EB53C(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnBlendOut_A2AF9EDB4B73A874FD1103A5E2978872(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnBlendOut_B5B290D542426441F46BE788859240C1(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnBlendOut_E6A4AE3341A622D6357F55BE6D1FEF3E(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnBlendOut_EB827E0D4935F7139BCCD1B9AB8A6799(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnCompleted_17DBEC0A4227A331B4D6EAA1B9168868(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnCompleted_2B8D943F463835EC51DD3C9764015C2F(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnCompleted_43482355427A184598D948B4414EB53C(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnCompleted_A2AF9EDB4B73A874FD1103A5E2978872(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnCompleted_B5B290D542426441F46BE788859240C1(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnCompleted_E6A4AE3341A622D6357F55BE6D1FEF3E(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnCompleted_EB827E0D4935F7139BCCD1B9AB8A6799(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnInterrupted_17DBEC0A4227A331B4D6EAA1B9168868(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnInterrupted_2B8D943F463835EC51DD3C9764015C2F(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnInterrupted_43482355427A184598D948B4414EB53C(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnInterrupted_A2AF9EDB4B73A874FD1103A5E2978872(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnInterrupted_B5B290D542426441F46BE788859240C1(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnInterrupted_E6A4AE3341A622D6357F55BE6D1FEF3E(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnInterrupted_EB827E0D4935F7139BCCD1B9AB8A6799(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyBegin_17DBEC0A4227A331B4D6EAA1B9168868(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyBegin_2B8D943F463835EC51DD3C9764015C2F(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyBegin_43482355427A184598D948B4414EB53C(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyBegin_A2AF9EDB4B73A874FD1103A5E2978872(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyBegin_B5B290D542426441F46BE788859240C1(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyBegin_E6A4AE3341A622D6357F55BE6D1FEF3E(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyBegin_EB827E0D4935F7139BCCD1B9AB8A6799(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyEnd_17DBEC0A4227A331B4D6EAA1B9168868(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyEnd_2B8D943F463835EC51DD3C9764015C2F(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyEnd_43482355427A184598D948B4414EB53C(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyEnd_A2AF9EDB4B73A874FD1103A5E2978872(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyEnd_B5B290D542426441F46BE788859240C1(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyEnd_E6A4AE3341A622D6357F55BE6D1FEF3E(NotifyName) end

---@param NotifyName FName
function ABookBug_base_BP_C:OnNotifyEnd_EB827E0D4935F7139BCCD1B9AB8A6799(NotifyName) end

---@param DeltaSeconds float
function ABookBug_base_BP_C:ReceiveTick(DeltaSeconds) end

function ABookBug_base_BP_C:SetFlyingTrapTargetDir() end

function ABookBug_base_BP_C:TickBehaviour() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABookBug_base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ABookBug_base_BP_C:UserConstructionScript() end

ABookBug_base_BP_C['Update Rotation'] = function(self) end
