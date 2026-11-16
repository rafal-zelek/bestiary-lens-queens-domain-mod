---@meta

---@class URaider_GiveKeyAction_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local URaider_GiveKeyAction_C = {}

function URaider_GiveKeyAction_C:DonePickingUp() end

---@param EntryPoint int32
function URaider_GiveKeyAction_C:ExecuteUbergraph_Raider_GiveKeyAction(EntryPoint) end

---@param NotifyName FName
function URaider_GiveKeyAction_C:OnBlendOut_071761B04682292A3D2A25A2FBBA4E2D(NotifyName) end

---@param NotifyName FName
function URaider_GiveKeyAction_C:OnCompleted_071761B04682292A3D2A25A2FBBA4E2D(NotifyName) end

---@param NotifyName FName
function URaider_GiveKeyAction_C:OnInterrupted_071761B04682292A3D2A25A2FBBA4E2D(NotifyName) end

---@param NotifyName FName
function URaider_GiveKeyAction_C:OnNotifyBegin_071761B04682292A3D2A25A2FBBA4E2D(NotifyName) end

---@param NotifyName FName
function URaider_GiveKeyAction_C:OnNotifyEnd_071761B04682292A3D2A25A2FBBA4E2D(NotifyName) end

---@param Context AActor
function URaider_GiveKeyAction_C:RunActionWithinContext(Context) end
