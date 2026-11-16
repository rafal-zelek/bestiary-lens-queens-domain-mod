---@meta

---@class UStatusEffectVisBase_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StatusScreenOverlayType TSubclassOf<AStatusScreenOverlay_C>
---@field CurrentScreenOverlay AStatusScreenOverlay_C
---@field SortPri int32
local UStatusEffectVisBase_C = {}

function UStatusEffectVisBase_C:Apply() end

function UStatusEffectVisBase_C:ApplyTick() end

---@param EntryPoint int32
function UStatusEffectVisBase_C:ExecuteUbergraph_StatusEffectVisBase(EntryPoint) end

function UStatusEffectVisBase_C:Remove() end
