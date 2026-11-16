---@meta

---@class AENVController_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PostProcess UPostProcessComponent
---@field DefaultSceneRoot USceneComponent
---@field CurrentControlDataTarget UENVControlData_C
---@field TransitionStartFogColor FLinearColor
---@field TransitionStartFogStartDistance float
---@field TransitionStartFogFadeRange float
---@field CurrentFogColor FLinearColor
---@field CurrentFogFadeRange float
---@field CurrentFogStartDistance float
---@field CurrentTransitionStartTime float
---@field CurrentTransitionDuration float
local AENVController_C = {}

---@param EntryPoint int32
function AENVController_C:ExecuteUbergraph_ENVController(EntryPoint) end

function AENVController_C:Init() end

function AENVController_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AENVController_C:ReceiveTick(DeltaSeconds) end

---@param Data UENVControlData_C
---@param TransitionDuration float
function AENVController_C:SetTargetData(Data, TransitionDuration) end

function AENVController_C:UserConstructionScript() end
