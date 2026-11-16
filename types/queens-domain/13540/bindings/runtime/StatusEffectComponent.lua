---@meta

---@class UStatusEffectComponent_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EffectName FName
---@field DurationConfigProperty FName
---@field ['ApplicationRumble FF'] UForceFeedbackEffect
---@field ApplicationSound USoundBase
---@field FXApplicationHandler UFXApplicationHandler_C
---@field AppliedSound USoundCue
---@field AppliedScreenFX UStatusEffectVisBase_C
---@field AppliedNiagaraEffects UNiagaraSystem
---@field TimerHandle FTimerHandle
---@field Updated FStatusEffectComponent_CUpdated
---@field StatusVis_Type TSubclassOf<UStatusEffectVisBase_C>
---@field Applied boolean
---@field EffectIsPositive boolean
---@field Item UFS_ItemData_C
---@field Permanent boolean
---@field Resistance float
---@field UpdateResistances FStatusEffectComponent_CUpdateResistances
local UStatusEffectComponent_C = {}

function UStatusEffectComponent_C:Apply() end

---@param Restoring boolean
---@param Duration float
function UStatusEffectComponent_C:Apply_Internal(Restoring, Duration) end

function UStatusEffectComponent_C:Cancel() end

---@param EntryPoint int32
function UStatusEffectComponent_C:ExecuteUbergraph_StatusEffectComponent(EntryPoint) end

---@param Out float
function UStatusEffectComponent_C:GetDuration(Out) end

---@param Value float
function UStatusEffectComponent_C:GetSavedValue(Value) end

function UStatusEffectComponent_C:ReceiveBeginPlay() end

---@param Duration float
function UStatusEffectComponent_C:RestoreFromSave(Duration) end

---@param EffectComp UStatusEffectComponent_C
function UStatusEffectComponent_C:UpdateResistances__DelegateSignature(EffectComp) end

---@param Applied boolean
function UStatusEffectComponent_C:Updated__DelegateSignature(Applied) end

function UStatusEffectComponent_C:VisualTick() end

function UStatusEffectComponent_C:showscreenfxhack() end

function UStatusEffectComponent_C:showscrenfxnosound() end
