---@meta

---@class ARuneButton_C : ALever_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WorldEventReceiver UWorldEventReceiver_C
---@field Cinders UStaticMeshComponent
---@field RuneDissolve_FX UNiagaraComponent
---@field Timeline_0_0_moveout_88C27E21465B53954EBBE1B3874394EF float
---@field Timeline_0_0_scale_88C27E21465B53954EBBE1B3874394EF float
---@field Timeline_0_0_Opacity_88C27E21465B53954EBBE1B3874394EF float
---@field Timeline_0_0_GlowBoost_88C27E21465B53954EBBE1B3874394EF float
---@field Timeline_0_0__Direction_88C27E21465B53954EBBE1B3874394EF ETimelineDirection::Type
---@field Timeline_0_0 UTimelineComponent
---@field RequiredRuneKeyIndex RuneKeyEnum::Type
---@field NSDToCheckInAdditionToActivation FName
---@field AlreadyVisibleFromActivationReq boolean
local ARuneButton_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ARuneButton_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ARuneButton_C:AnimateLeverPull() end

function ARuneButton_C:BndEvt__RuneButton_WorldEventReceiver_K2Node_ComponentBoundEvent_0_OnWorldStateChanged__DelegateSignature() end

---@param EntryPoint int32
function ARuneButton_C:ExecuteUbergraph_RuneButton(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ARuneButton_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ARuneButton_C:ReceiveBeginPlay() end

function ARuneButton_C:Timeline_0_0__FinishedFunc() end

function ARuneButton_C:Timeline_0_0__UpdateFunc() end

function ARuneButton_C:UserConstructionScript() end

ARuneButton_C['Restore to switched'] = function(self) end
