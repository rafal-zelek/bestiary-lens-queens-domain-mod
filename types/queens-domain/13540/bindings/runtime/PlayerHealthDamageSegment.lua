---@meta

---@class UPlayerHealthDamageSegment_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Fade UWidgetAnimation
---@field HealthMeterFill UImage
---@field StartVal float
---@field EndVal float
local UPlayerHealthDamageSegment_C = {}

function UPlayerHealthDamageSegment_C:Construct() end

---@param EntryPoint int32
function UPlayerHealthDamageSegment_C:ExecuteUbergraph_PlayerHealthDamageSegment(EntryPoint) end
