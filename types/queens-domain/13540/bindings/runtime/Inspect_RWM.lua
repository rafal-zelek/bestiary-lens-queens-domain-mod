---@meta

---@class AInspect_RWM_C : AItem3DView_RWM_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OpacityCapture USceneCaptureComponent2D
---@field DirectionalLight UDirectionalLightComponent
---@field DirectionalLight2 UDirectionalLightComponent
---@field DirectionalLight1 UDirectionalLightComponent
local AInspect_RWM_C = {}

---@param EntryPoint int32
function AInspect_RWM_C:ExecuteUbergraph_Inspect_RWM(EntryPoint) end

---@param DeltaSeconds float
function AInspect_RWM_C:ReceiveTick(DeltaSeconds) end

---@param FOV float
function AInspect_RWM_C:SetFOV(FOV) end

AInspect_RWM_C['Refresh 3DView'] = function(self) end
