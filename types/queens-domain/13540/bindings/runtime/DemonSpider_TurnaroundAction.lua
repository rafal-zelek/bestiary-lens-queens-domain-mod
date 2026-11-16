---@meta

---@class UDemonSpider_TurnaroundAction_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox USphereComponent
---@field SpiderContext ADemonSpider_BP_C
local UDemonSpider_TurnaroundAction_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UDemonSpider_TurnaroundAction_C:CancelAction(Reason) end

---@param EntryPoint int32
function UDemonSpider_TurnaroundAction_C:ExecuteUbergraph_DemonSpider_TurnaroundAction(EntryPoint) end

---@param Context AFS_EnemyCharacterBase
function UDemonSpider_TurnaroundAction_C:InitAction_BP(Context) end

---@param NotifyName FName
function UDemonSpider_TurnaroundAction_C:OnBlendOut_55E20CB3497414AD1E8F99BD812F80E5(NotifyName) end

---@param NotifyName FName
function UDemonSpider_TurnaroundAction_C:OnCompleted_55E20CB3497414AD1E8F99BD812F80E5(NotifyName) end

---@param NotifyName FName
function UDemonSpider_TurnaroundAction_C:OnInterrupted_55E20CB3497414AD1E8F99BD812F80E5(NotifyName) end

---@param NotifyName FName
function UDemonSpider_TurnaroundAction_C:OnNotifyBegin_55E20CB3497414AD1E8F99BD812F80E5(NotifyName) end

---@param NotifyName FName
function UDemonSpider_TurnaroundAction_C:OnNotifyEnd_55E20CB3497414AD1E8F99BD812F80E5(NotifyName) end

function UDemonSpider_TurnaroundAction_C:RunAction_BP() end
