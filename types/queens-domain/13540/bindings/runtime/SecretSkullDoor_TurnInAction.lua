---@meta

---@class USecretSkullDoor_TurnInAction_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local USecretSkullDoor_TurnInAction_C = {}

function USecretSkullDoor_TurnInAction_C:DoneGiving() end

---@param EntryPoint int32
function USecretSkullDoor_TurnInAction_C:ExecuteUbergraph_SecretSkullDoor_TurnInAction(EntryPoint) end

---@param Context AActor
function USecretSkullDoor_TurnInAction_C:RunActionWithinContext(Context) end

function USecretSkullDoor_TurnInAction_C:TurnInSkulls() end
