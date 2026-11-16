---@meta

---@class UKnight_GiveSword_Action_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local UKnight_GiveSword_Action_C = {}

function UKnight_GiveSword_Action_C:CustomEvent_1() end

---@param EntryPoint int32
function UKnight_GiveSword_Action_C:ExecuteUbergraph_Knight_GiveSword_Action(EntryPoint) end

---@param NotifyName FName
function UKnight_GiveSword_Action_C:OnBlendOut_E8F32F434E1F5CEF57BC5F8E0D5FA824(NotifyName) end

---@param NotifyName FName
function UKnight_GiveSword_Action_C:OnCompleted_E8F32F434E1F5CEF57BC5F8E0D5FA824(NotifyName) end

---@param NotifyName FName
function UKnight_GiveSword_Action_C:OnInterrupted_E8F32F434E1F5CEF57BC5F8E0D5FA824(NotifyName) end

---@param NotifyName FName
function UKnight_GiveSword_Action_C:OnNotifyBegin_E8F32F434E1F5CEF57BC5F8E0D5FA824(NotifyName) end

---@param NotifyName FName
function UKnight_GiveSword_Action_C:OnNotifyEnd_E8F32F434E1F5CEF57BC5F8E0D5FA824(NotifyName) end

---@param Context AActor
function UKnight_GiveSword_Action_C:RunActionWithinContext(Context) end
