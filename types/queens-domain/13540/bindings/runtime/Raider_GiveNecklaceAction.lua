---@meta

---@class URaider_GiveNecklaceAction_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local URaider_GiveNecklaceAction_C = {}

function URaider_GiveNecklaceAction_C:DonePickingUp() end

---@param EntryPoint int32
function URaider_GiveNecklaceAction_C:ExecuteUbergraph_Raider_GiveNecklaceAction(EntryPoint) end

---@param NotifyName FName
function URaider_GiveNecklaceAction_C:OnBlendOut_7360D9574B8681B0207C1B906664BCB6(NotifyName) end

---@param NotifyName FName
function URaider_GiveNecklaceAction_C:OnCompleted_7360D9574B8681B0207C1B906664BCB6(NotifyName) end

---@param NotifyName FName
function URaider_GiveNecklaceAction_C:OnInterrupted_7360D9574B8681B0207C1B906664BCB6(NotifyName) end

---@param NotifyName FName
function URaider_GiveNecklaceAction_C:OnNotifyBegin_7360D9574B8681B0207C1B906664BCB6(NotifyName) end

---@param NotifyName FName
function URaider_GiveNecklaceAction_C:OnNotifyEnd_7360D9574B8681B0207C1B906664BCB6(NotifyName) end

---@param Context AActor
function URaider_GiveNecklaceAction_C:RunActionWithinContext(Context) end
