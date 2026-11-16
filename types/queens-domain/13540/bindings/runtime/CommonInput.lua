---@meta

---@class FCommonInputKeyBrushConfiguration
---@field Key FKey
---@field KeyBrush FSlateBrush
local FCommonInputKeyBrushConfiguration = {}

---@class FCommonInputKeySetBrushConfiguration
---@field Keys TArray<FKey>
---@field KeyBrush FSlateBrush
local FCommonInputKeySetBrushConfiguration = {}

---@class FCommonInputPlatformBaseData
---@field bSupported boolean
---@field DefaultInputType ECommonInputType
---@field bSupportsMouseAndKeyboard boolean
---@field bSupportsGamepad boolean
---@field DefaultGamepadName FName
---@field bCanChangeGamepadType boolean
---@field bSupportsTouch boolean
---@field ControllerData TArray<TSoftClassPtr<UCommonInputBaseControllerData>>
---@field ControllerDataClasses TArray<TSubclassOf<UCommonInputBaseControllerData>>
local FCommonInputPlatformBaseData = {}

---@class UCommonInputBaseControllerData : UObject
---@field InputType ECommonInputType
---@field GamepadName FName
---@field ControllerTexture TSoftObjectPtr<UTexture2D>
---@field ControllerButtonMaskTexture TSoftObjectPtr<UTexture2D>
---@field InputBrushDataMap TArray<FCommonInputKeyBrushConfiguration>
---@field InputBrushKeySets TArray<FCommonInputKeySetBrushConfiguration>
local UCommonInputBaseControllerData = {}

---@class UCommonInputSettings : UObject
---@field InputData TSoftClassPtr<UCommonUIInputData>
---@field CommonInputPlatformData TMap<FName, FCommonInputPlatformBaseData>
---@field bEnableInputMethodThrashingProtection boolean
---@field InputMethodThrashingLimit int32
---@field InputMethodThrashingWindowInSeconds double
---@field InputMethodThrashingCooldownInSeconds double
---@field bAllowOutOfFocusDeviceInput boolean
---@field InputDataClass TSubclassOf<UCommonUIInputData>
---@field CurrentPlatform FCommonInputPlatformBaseData
local UCommonInputSettings = {}

---@class UCommonInputSubsystem : ULocalPlayerSubsystem
---@field bCursorIsAwake boolean
---@field bCursorCanWake boolean
---@field OnInputMethodChanged FCommonInputSubsystemOnInputMethodChanged
---@field NumberOfInputMethodChangesRecently int32
---@field LastInputMethodChangeTime double
---@field LastTimeInputMethodThrashingBegan double
---@field LastInputType ECommonInputType
---@field CurrentInputType ECommonInputType
---@field GamepadInputType FName
---@field CurrentInputLocks TMap<FName, ECommonInputType>
---@field bIsGamepadSimulatedClick boolean
local UCommonInputSubsystem = {}

---@class UCommonUIInputData : UObject
---@field DefaultClickAction FDataTableRowHandle
---@field DefaultBackAction FDataTableRowHandle
local UCommonUIInputData = {}

function UCommonInputBaseControllerData:GetRegisteredGamepads() end

function UCommonInputSettings:GetRegisteredPlatforms() end

---@param InReason FName
---@param InInputType ECommonInputType
---@param bAddLock boolean
function UCommonInputSubsystem:AddOrRemoveInputTypeLock(InReason, InInputType, bAddLock) end

function UCommonInputSubsystem:GetCurrentGamepadName() end

function UCommonInputSubsystem:GetCurrentInputType() end

function UCommonInputSubsystem:GetDefaultInputType() end

function UCommonInputSubsystem:GetIsGamepadSimulatedClick() end

---@param InputMethod ECommonInputType
function UCommonInputSubsystem:IsInputMethodActive(InputMethod) end

function UCommonInputSubsystem:IsUsingPointerInput() end

---@param NewInputType ECommonInputType
function UCommonInputSubsystem:SetCurrentInputType(NewInputType) end

---@param CanWake boolean
function UCommonInputSubsystem:SetCursorCanWake(CanWake) end

---@param InGamepadInputType FName
function UCommonInputSubsystem:SetGamepadInputType(InGamepadInputType) end

function UCommonInputSubsystem:ShouldShowInputKeys() end

function UCommonInputSubsystem:SleepCursor() end

function UCommonInputSubsystem:WakeUpCursor() end
