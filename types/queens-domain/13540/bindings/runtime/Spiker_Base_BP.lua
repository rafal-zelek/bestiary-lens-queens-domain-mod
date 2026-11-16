---@meta

---@class ASpiker_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field TrapMontage UAnimMontage
---@field Attack0 UAnimMontage
---@field Attack1 UAnimMontage
local ASpiker_Base_BP_C = {}

---@param Damaged boolean
function ASpiker_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASpiker_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Mode EnemyBehaviourMode::Type
function ASpiker_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ASpiker_Base_BP_C:ExecuteUbergraph_Spiker_Base_BP(EntryPoint) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnBlendOut_71C5CA8F44979CD80123F2B0E32A4DA0(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnBlendOut_DC8514B8456DF34CE8B5D8A919E0C608(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnCompleted_71C5CA8F44979CD80123F2B0E32A4DA0(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnCompleted_DC8514B8456DF34CE8B5D8A919E0C608(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnInterrupted_71C5CA8F44979CD80123F2B0E32A4DA0(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnInterrupted_DC8514B8456DF34CE8B5D8A919E0C608(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnNotifyBegin_71C5CA8F44979CD80123F2B0E32A4DA0(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnNotifyBegin_DC8514B8456DF34CE8B5D8A919E0C608(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnNotifyEnd_71C5CA8F44979CD80123F2B0E32A4DA0(NotifyName) end

---@param NotifyName FName
function ASpiker_Base_BP_C:OnNotifyEnd_DC8514B8456DF34CE8B5D8A919E0C608(NotifyName) end
