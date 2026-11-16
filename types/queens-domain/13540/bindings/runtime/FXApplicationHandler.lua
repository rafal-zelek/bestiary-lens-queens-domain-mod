---@meta

---@class UFXApplicationHandler_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field QueuedItems TArray<FFXQueuedItem>
---@field EffectCurrentlyRunning boolean
---@field QueueRate float
---@field QueuedByName TMap<FName, FFXQueuedItem>
local UFXApplicationHandler_C = {}

function UFXApplicationHandler_C:BeginNextItem() end

---@param Name FName
function UFXApplicationHandler_C:CancelEffect(Name) end

function UFXApplicationHandler_C:ClearQueue() end

---@param EntryPoint int32
function UFXApplicationHandler_C:ExecuteUbergraph_FXApplicationHandler(EntryPoint) end

---@param A FName
function UFXApplicationHandler_C:IsNewEffectStomped(A) end

---@param NiagaraEffect UNiagaraSystem
---@param Sound USoundCue
---@param ScreenEffects UStatusEffectVisBase_C
---@param Name FName
function UFXApplicationHandler_C:QueueEffects(NiagaraEffect, Sound, ScreenEffects, Name) end

---@param InputPin FName
function UFXApplicationHandler_C:RemoveWeakerVersions(InputPin) end

---@param Item FFXQueuedItem
function UFXApplicationHandler_C:RunQueuedItem(Item) end
