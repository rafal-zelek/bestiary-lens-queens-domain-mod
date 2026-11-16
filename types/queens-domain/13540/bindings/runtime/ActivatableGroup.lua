---@meta

---@class AActivatableGroup_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Icon UBillboardComponent
---@field ActivationTargets TArray<TScriptInterface<IActivatable_C>>
---@field CurrentActivationTarget int32
---@field ['Activation Delay'] float
---@field ['Activation Delay Randomness'] float
---@field ['Initial Delay'] float
---@field CurrentSequenceIsDeactivate boolean
---@field CurActivationByLoad boolean
---@field DeactivateInsteadOfActivate boolean
local AActivatableGroup_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AActivatableGroup_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AActivatableGroup_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AActivatableGroup_C:ExecuteUbergraph_ActivatableGroup(EntryPoint) end

---@param ByLoadIn boolean
function AActivatableGroup_C:SetByLoadFlag(ByLoadIn) end
