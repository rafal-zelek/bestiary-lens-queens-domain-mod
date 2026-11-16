---@meta

---@class AMagicCompass_RWM_C : ARenderWorldManager_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DirectionalLight UDirectionalLightComponent
---@field ColorCapture USceneCaptureComponent2D
---@field OpacityCapture USceneCaptureComponent2D
---@field CameraRoot USceneComponent
---@field StaticMesh UStaticMeshComponent
---@field Orientation FRotator
---@field YawSpringState FFloatSpringState
---@field LastRealYaw float
---@field AccumYaw float
---@field SimYaw float
---@field SimDT float
---@field SimPitch float
---@field PitchSpringState FFloatSpringState
---@field ['Critical Damping Factor'] float
---@field Stiffness float
---@field Mass float
local AMagicCompass_RWM_C = {}

---@param EntryPoint int32
function AMagicCompass_RWM_C:ExecuteUbergraph_MagicCompass_RWM(EntryPoint) end

---@param DeltaSeconds float
function AMagicCompass_RWM_C:ReceiveTick(DeltaSeconds) end

---@param Last float
---@param Cur float
function AMagicCompass_RWM_C:UpdateAccumRotator(Last, Cur) end

---@param Orientation FRotator
function AMagicCompass_RWM_C:UpdateCameraOrientation(Orientation) end
