---@meta

---@class AChefCrowEventScript_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field StartTrigger AActivationTrigger_C
---@field LeaveTrigger AActivationTrigger_C
---@field DialogueTrigger AActivationTrigger_C
---@field EventActive boolean
---@field CrowNPC AChefCrowEvent_NPC_C
local AChefCrowEventScript_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AChefCrowEventScript_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AChefCrowEventScript_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function AChefCrowEventScript_C:DoDialogue() end

function AChefCrowEventScript_C:EndEvent() end

---@param EntryPoint int32
function AChefCrowEventScript_C:ExecuteUbergraph_ChefCrowEventScript(EntryPoint) end

function AChefCrowEventScript_C:FullyEndEventImmediately() end

function AChefCrowEventScript_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AChefCrowEventScript_C:ReceiveTick(DeltaSeconds) end

function AChefCrowEventScript_C:SetUpEvent() end
