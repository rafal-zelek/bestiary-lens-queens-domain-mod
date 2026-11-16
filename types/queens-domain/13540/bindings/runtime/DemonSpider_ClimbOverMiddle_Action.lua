---@meta

---@class UDemonSpider_ClimbOverMiddle_Action_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox USphereComponent
---@field SpiderContext ADemonSpider_BP_C
local UDemonSpider_ClimbOverMiddle_Action_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UDemonSpider_ClimbOverMiddle_Action_C:CancelAction(Reason) end

---@param EntryPoint int32
function UDemonSpider_ClimbOverMiddle_Action_C:ExecuteUbergraph_DemonSpider_ClimbOverMiddle_Action(EntryPoint) end

---@param Context AFS_EnemyCharacterBase
function UDemonSpider_ClimbOverMiddle_Action_C:InitAction_BP(Context) end

---@param NotifyName FName
function UDemonSpider_ClimbOverMiddle_Action_C:OnBlendOut_55E20CB3497414AD1E8F99BD79A253EE(NotifyName) end

---@param NotifyName FName
function UDemonSpider_ClimbOverMiddle_Action_C:OnCompleted_55E20CB3497414AD1E8F99BD79A253EE(NotifyName) end

---@param NotifyName FName
function UDemonSpider_ClimbOverMiddle_Action_C:OnInterrupted_55E20CB3497414AD1E8F99BD79A253EE(NotifyName) end

---@param NotifyName FName
function UDemonSpider_ClimbOverMiddle_Action_C:OnNotifyBegin_55E20CB3497414AD1E8F99BD79A253EE(NotifyName) end

---@param NotifyName FName
function UDemonSpider_ClimbOverMiddle_Action_C:OnNotifyEnd_55E20CB3497414AD1E8F99BD79A253EE(NotifyName) end

function UDemonSpider_ClimbOverMiddle_Action_C:RunAction_BP() end
