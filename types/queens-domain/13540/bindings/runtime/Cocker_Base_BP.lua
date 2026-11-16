---@meta

---@class ACocker_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TrapMontage UAnimMontage
local ACocker_Base_BP_C = {}

---@param Damaged boolean
function ACocker_Base_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function ACocker_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ACocker_Base_BP_C:ExecuteUbergraph_Cocker_Base_BP(EntryPoint) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnBlendOut_4F0C67E94AE06045382EDFB871DE3F7F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnBlendOut_8C3658CC4374351C0873E2B1D19D9F2F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnCompleted_4F0C67E94AE06045382EDFB871DE3F7F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnCompleted_8C3658CC4374351C0873E2B1D19D9F2F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnInterrupted_4F0C67E94AE06045382EDFB871DE3F7F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnInterrupted_8C3658CC4374351C0873E2B1D19D9F2F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnNotifyBegin_4F0C67E94AE06045382EDFB871DE3F7F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnNotifyBegin_8C3658CC4374351C0873E2B1D19D9F2F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnNotifyEnd_4F0C67E94AE06045382EDFB871DE3F7F(NotifyName) end

---@param NotifyName FName
function ACocker_Base_BP_C:OnNotifyEnd_8C3658CC4374351C0873E2B1D19D9F2F(NotifyName) end
