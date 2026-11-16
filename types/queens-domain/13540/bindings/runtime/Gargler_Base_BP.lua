---@meta

---@class AGargler_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_7_NewTrack_0_88D06BD64DD911F87B64259A79AD97BB float
---@field Timeline_7__Direction_88D06BD64DD911F87B64259A79AD97BB ETimelineDirection::Type
---@field Timeline_7 UTimelineComponent
---@field WeaponDissolveIn_NewTrack_0_926799DA414AD8C33DDDC6AFB7DB3DD5 float
---@field WeaponDissolveIn__Direction_926799DA414AD8C33DDDC6AFB7DB3DD5 ETimelineDirection::Type
---@field WeaponDissolveIn UTimelineComponent
local AGargler_Base_BP_C = {}

---@param Damaged boolean
function AGargler_Base_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function AGargler_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AGargler_Base_BP_C:ExecuteUbergraph_Gargler_Base_BP(EntryPoint) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnBlendOut_1496B96140A93A9D91BCFDBB8810974A(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnBlendOut_183B02BC4223E0E716D9BFBF3FA1251F(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnBlendOut_3B8868FE4C93C526D2657296C0454D95(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnBlendOut_81AB57E747C1FCFBAD6D98B75E132BED(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnBlendOut_883C30124F23804BAC2D8FA1EE4A8E18(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnBlendOut_943D39FC4DF229E5F2FB1D8403A1B423(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnBlendOut_A6937B3C4261C687B56C19BF1A4C754B(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnBlendOut_F30E61924E825221818E04B268A4EAE5(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnCompleted_1496B96140A93A9D91BCFDBB8810974A(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnCompleted_183B02BC4223E0E716D9BFBF3FA1251F(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnCompleted_3B8868FE4C93C526D2657296C0454D95(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnCompleted_81AB57E747C1FCFBAD6D98B75E132BED(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnCompleted_883C30124F23804BAC2D8FA1EE4A8E18(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnCompleted_943D39FC4DF229E5F2FB1D8403A1B423(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnCompleted_A6937B3C4261C687B56C19BF1A4C754B(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnCompleted_F30E61924E825221818E04B268A4EAE5(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnInterrupted_1496B96140A93A9D91BCFDBB8810974A(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnInterrupted_183B02BC4223E0E716D9BFBF3FA1251F(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnInterrupted_3B8868FE4C93C526D2657296C0454D95(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnInterrupted_81AB57E747C1FCFBAD6D98B75E132BED(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnInterrupted_883C30124F23804BAC2D8FA1EE4A8E18(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnInterrupted_943D39FC4DF229E5F2FB1D8403A1B423(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnInterrupted_A6937B3C4261C687B56C19BF1A4C754B(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnInterrupted_F30E61924E825221818E04B268A4EAE5(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyBegin_1496B96140A93A9D91BCFDBB8810974A(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyBegin_183B02BC4223E0E716D9BFBF3FA1251F(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyBegin_3B8868FE4C93C526D2657296C0454D95(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyBegin_81AB57E747C1FCFBAD6D98B75E132BED(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyBegin_883C30124F23804BAC2D8FA1EE4A8E18(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyBegin_943D39FC4DF229E5F2FB1D8403A1B423(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyBegin_A6937B3C4261C687B56C19BF1A4C754B(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyBegin_F30E61924E825221818E04B268A4EAE5(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyEnd_1496B96140A93A9D91BCFDBB8810974A(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyEnd_183B02BC4223E0E716D9BFBF3FA1251F(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyEnd_3B8868FE4C93C526D2657296C0454D95(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyEnd_81AB57E747C1FCFBAD6D98B75E132BED(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyEnd_883C30124F23804BAC2D8FA1EE4A8E18(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyEnd_943D39FC4DF229E5F2FB1D8403A1B423(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyEnd_A6937B3C4261C687B56C19BF1A4C754B(NotifyName) end

---@param NotifyName FName
function AGargler_Base_BP_C:OnNotifyEnd_F30E61924E825221818E04B268A4EAE5(NotifyName) end

---@param Dissolve float
function AGargler_Base_BP_C:SetTrapDissolve(Dissolve) end

function AGargler_Base_BP_C:Timeline_7__FinishedFunc() end

function AGargler_Base_BP_C:Timeline_7__UpdateFunc() end

function AGargler_Base_BP_C:UpdateInitialBehaviour() end

function AGargler_Base_BP_C:UserConstructionScript() end

function AGargler_Base_BP_C:WeaponDissolveIn__FinishedFunc() end

function AGargler_Base_BP_C:WeaponDissolveIn__UpdateFunc() end
