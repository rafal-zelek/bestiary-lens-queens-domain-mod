---@meta

---@class USwitcherooBlueprintLibrary : UBlueprintFunctionLibrary
local USwitcherooBlueprintLibrary = {}

---@class USwitcherooSettings : UDeveloperSettings
---@field DefaultInputDevice ESwitcherooInputDevice
---@field MouseMoveThreshold float
---@field AnalogStick ESwitcherooAnalogStick
---@field AnalogDeadZoneMode ESwitcherooAnalogDeadZoneMode
---@field AnalogDeadZoneSize float
local USwitcherooSettings = {}

---@param Input FVector2D
function USwitcherooBlueprintLibrary:ApplyDeadZoneToAnalogInput(Input) end

---@param Event FBindDetectedInputDeviceChangedEvent
function USwitcherooBlueprintLibrary:BindDetectedInputDeviceChanged(Event) end

function USwitcherooBlueprintLibrary:DisableInputDetection() end

function USwitcherooBlueprintLibrary:EnableInputDetection() end

function USwitcherooBlueprintLibrary:GetDetectedInputDevice() end

---@param Input FVector2D
function USwitcherooBlueprintLibrary:IsAnalogInputOutsideDeadZone(Input) end

function USwitcherooBlueprintLibrary:IsInputDetectionEnabled() end

---@param bEnabled boolean
function USwitcherooBlueprintLibrary:SetInputDetectionEnabled(bEnabled) end

---@param Event FUnbindDetectedInputDeviceChangedEvent
function USwitcherooBlueprintLibrary:UnbindDetectedInputDeviceChanged(Event) end

function USwitcherooSettings:GetAnalogDeadZoneMode() end

function USwitcherooSettings:GetAnalogDeadZoneSize() end

function USwitcherooSettings:GetAnalogStick() end

function USwitcherooSettings:GetDefaultInputDevice() end

function USwitcherooSettings:GetMouseMoveThreshold() end

function USwitcherooSettings:GetSwitcherooSettings() end

---@param NewAnalogDeadZoneMode ESwitcherooAnalogDeadZoneMode
function USwitcherooSettings:SetAnalogDeadZoneMode(NewAnalogDeadZoneMode) end

---@param NewAnalogDeadZoneSize float
function USwitcherooSettings:SetAnalogDeadZoneSize(NewAnalogDeadZoneSize) end

---@param NewAnalogStick ESwitcherooAnalogStick
function USwitcherooSettings:SetAnalogStick(NewAnalogStick) end

---@param NewDefaultInputDevice ESwitcherooInputDevice
function USwitcherooSettings:SetDefaultInputDevice(NewDefaultInputDevice) end

---@param NewMouseMoveThreshold float
function USwitcherooSettings:SetMouseMoveThreshold(NewMouseMoveThreshold) end
