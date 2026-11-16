---@meta

---@class UWoundLogic_C : UStatusEffectComponent_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentWoundAmount float
---@field StartRegenTIme FTimerHandle
---@field Regenerate boolean
local UWoundLogic_C = {}

---@param Amount float
function UWoundLogic_C:ApplyWound(Amount) end

---@param EntryPoint int32
function UWoundLogic_C:ExecuteUbergraph_WoundLogic(EntryPoint) end

---@param Value float
function UWoundLogic_C:GetSavedValue(Value) end

---@param HP float
---@param Modded_HP float
function UWoundLogic_C:ModifyMaxHP(HP, Modded_HP) end

---@param DeltaSeconds float
function UWoundLogic_C:ReceiveTick(DeltaSeconds) end

function UWoundLogic_C:RefreshStatus() end

---@param Duration float
function UWoundLogic_C:RestoreFromSave(Duration) end

function UWoundLogic_C:StartRegenerating() end
