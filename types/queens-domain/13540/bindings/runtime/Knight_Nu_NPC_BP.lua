---@meta

---@class AKnight_Nu_NPC_BP_C : AKnight_NPC_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AKnight_Nu_NPC_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AKnight_Nu_NPC_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AKnight_Nu_NPC_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function AKnight_Nu_NPC_BP_C:Die() end

---@param EntryPoint int32
function AKnight_Nu_NPC_BP_C:ExecuteUbergraph_Knight_Nu_NPC_BP(EntryPoint) end

---@param NotifyName FName
function AKnight_Nu_NPC_BP_C:OnBlendOut_0A3A7AF64725952D03F86A85E4797B16(NotifyName) end

---@param NotifyName FName
function AKnight_Nu_NPC_BP_C:OnCompleted_0A3A7AF64725952D03F86A85E4797B16(NotifyName) end

---@param NotifyName FName
function AKnight_Nu_NPC_BP_C:OnInterrupted_0A3A7AF64725952D03F86A85E4797B16(NotifyName) end

---@param NotifyName FName
function AKnight_Nu_NPC_BP_C:OnNotifyBegin_0A3A7AF64725952D03F86A85E4797B16(NotifyName) end

---@param NotifyName FName
function AKnight_Nu_NPC_BP_C:OnNotifyEnd_0A3A7AF64725952D03F86A85E4797B16(NotifyName) end
