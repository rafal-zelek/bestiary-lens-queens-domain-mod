---@meta

---@class UQueen_AOE_Action_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['As Queen BP'] AQueen_BP_C
---@field CanUseAttack boolean
---@field ExplodeBlocked boolean
local UQueen_AOE_Action_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UQueen_AOE_Action_C:CancelAction(Reason) end

---@param EntryPoint int32
function UQueen_AOE_Action_C:ExecuteUbergraph_Queen_AOE_Action(EntryPoint) end

---@param Context AFS_EnemyCharacterBase
function UQueen_AOE_Action_C:InitAction_BP(Context) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnBlendOut_7D440021432A7DD3C1F7D1AAE5966AD6(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnBlendOut_BAC2AC4948549D2837B241BDDFCFB3AD(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnCompleted_7D440021432A7DD3C1F7D1AAE5966AD6(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnCompleted_BAC2AC4948549D2837B241BDDFCFB3AD(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnInterrupted_7D440021432A7DD3C1F7D1AAE5966AD6(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnInterrupted_BAC2AC4948549D2837B241BDDFCFB3AD(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnNotifyBegin_7D440021432A7DD3C1F7D1AAE5966AD6(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnNotifyBegin_BAC2AC4948549D2837B241BDDFCFB3AD(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnNotifyEnd_7D440021432A7DD3C1F7D1AAE5966AD6(NotifyName) end

---@param NotifyName FName
function UQueen_AOE_Action_C:OnNotifyEnd_BAC2AC4948549D2837B241BDDFCFB3AD(NotifyName) end

function UQueen_AOE_Action_C:RunAction_BP() end
