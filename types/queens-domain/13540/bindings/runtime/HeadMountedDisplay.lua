---@meta

---@class FXRDeviceId
---@field SystemName FName
---@field DeviceID int32
local FXRDeviceId = {}

---@class FXRGestureConfig
---@field bTap boolean
---@field bHold boolean
---@field AxisGesture ESpatialInputGestureAxis
---@field bNavigationAxisX boolean
---@field bNavigationAxisY boolean
---@field bNavigationAxisZ boolean
local FXRGestureConfig = {}

---@class FXRHMDData
---@field bValid boolean
---@field DeviceName FName
---@field ApplicationInstanceID FGuid
---@field TrackingStatus ETrackingStatus
---@field Position FVector
---@field Rotation FQuat
local FXRHMDData = {}

---@class FXRMotionControllerData
---@field bValid boolean
---@field DeviceName FName
---@field ApplicationInstanceID FGuid
---@field DeviceVisualType EXRVisualType
---@field HandIndex EControllerHand
---@field TrackingStatus ETrackingStatus
---@field GripPosition FVector
---@field GripRotation FQuat
---@field AimPosition FVector
---@field AimRotation FQuat
---@field HandKeyPositions TArray<FVector>
---@field HandKeyRotations TArray<FQuat>
---@field HandKeyRadii TArray<float>
---@field bIsGrasped boolean
local FXRMotionControllerData = {}

---@class UAsyncTask_LoadXRDeviceVisComponent : UBlueprintAsyncActionBase
---@field OnModelLoaded FAsyncTask_LoadXRDeviceVisComponentOnModelLoaded
---@field OnLoadFailure FAsyncTask_LoadXRDeviceVisComponentOnLoadFailure
---@field SpawnedComponent UPrimitiveComponent
local UAsyncTask_LoadXRDeviceVisComponent = {}

---@class UHandKeypointConversion : UBlueprintFunctionLibrary
local UHandKeypointConversion = {}

---@class UHeadMountedDisplayFunctionLibrary : UBlueprintFunctionLibrary
local UHeadMountedDisplayFunctionLibrary = {}

---@class UMotionControllerComponent : UPrimitiveComponent
---@field PlayerIndex int32
---@field Hand EControllerHand
---@field MotionSource FName
---@field bDisableLowLatencyUpdate boolean
---@field CurrentTrackingStatus ETrackingStatus
---@field bDisplayDeviceModel boolean
---@field DisplayModelSource FName
---@field CustomDisplayMesh UStaticMesh
---@field DisplayMeshMaterialOverrides TArray<UMaterialInterface>
---@field DisplayComponent UPrimitiveComponent
local UMotionControllerComponent = {}

---@class UMotionTrackedDeviceFunctionLibrary : UBlueprintFunctionLibrary
local UMotionTrackedDeviceFunctionLibrary = {}

---@class UVRNotificationsComponent : UActorComponent
---@field HMDTrackingInitializingAndNeedsHMDToBeTrackedDelegate FVRNotificationsComponentHMDTrackingInitializingAndNeedsHMDToBeTrackedDelegate
---@field HMDTrackingInitializedDelegate FVRNotificationsComponentHMDTrackingInitializedDelegate
---@field HMDRecenteredDelegate FVRNotificationsComponentHMDRecenteredDelegate
---@field HMDLostDelegate FVRNotificationsComponentHMDLostDelegate
---@field HMDReconnectedDelegate FVRNotificationsComponentHMDReconnectedDelegate
---@field HMDConnectCanceledDelegate FVRNotificationsComponentHMDConnectCanceledDelegate
---@field HMDPutOnHeadDelegate FVRNotificationsComponentHMDPutOnHeadDelegate
---@field HMDRemovedFromHeadDelegate FVRNotificationsComponentHMDRemovedFromHeadDelegate
---@field VRControllerRecenteredDelegate FVRNotificationsComponentVRControllerRecenteredDelegate
local UVRNotificationsComponent = {}

---@class UXRAssetFunctionLibrary : UBlueprintFunctionLibrary
local UXRAssetFunctionLibrary = {}

---@class UXRLoadingScreenFunctionLibrary : UBlueprintFunctionLibrary
local UXRLoadingScreenFunctionLibrary = {}

---@param Target AActor
---@param XRDeviceId FXRDeviceId
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
---@param NewComponent UPrimitiveComponent
function UAsyncTask_LoadXRDeviceVisComponent:AddDeviceVisualizationComponentAsync(Target, XRDeviceId, bManualAttachment, RelativeTransform, NewComponent) end

---@param Target AActor
---@param SystemName FName
---@param DeviceName FName
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
---@param XRDeviceId FXRDeviceId
---@param NewComponent UPrimitiveComponent
function UAsyncTask_LoadXRDeviceVisComponent:AddNamedDeviceVisualizationComponentAsync(Target, SystemName, DeviceName, bManualAttachment, RelativeTransform, XRDeviceId, NewComponent) end

---@param Input EHandKeypoint
function UHandKeypointConversion:Conv_HandKeypointToInt32(Input) end

---@param InKey FKey
---@param InteractionProfile FString
---@param Hand EControllerHand
---@param MotionSource FName
---@param Indentifier FString
---@param Component FString
function UHeadMountedDisplayFunctionLibrary:BreakKey(InKey, InteractionProfile, Hand, MotionSource, Indentifier, Component) end

---@param ExternalTrackingTransform FTransform
function UHeadMountedDisplayFunctionLibrary:CalibrateExternalTrackingToHMD(ExternalTrackingTransform) end

---@param ActionPath FName
function UHeadMountedDisplayFunctionLibrary:ClearXRTimedInputActionDelegate(ActionPath) end

---@param GestureConfig FXRGestureConfig
function UHeadMountedDisplayFunctionLibrary:ConfigureGestures(GestureConfig) end

---@param IpAddress FString
---@param BitRate int32
function UHeadMountedDisplayFunctionLibrary:ConnectRemoteXRDevice(IpAddress, BitRate) end

function UHeadMountedDisplayFunctionLibrary:DisconnectRemoteXRDevice() end

---@param bEnable boolean
function UHeadMountedDisplayFunctionLibrary:EnableHMD(bEnable) end

---@param bEnable boolean
function UHeadMountedDisplayFunctionLibrary:EnableLowPersistenceMode(bEnable) end

---@param SystemId FName
---@param DeviceType EXRTrackedDeviceType
function UHeadMountedDisplayFunctionLibrary:EnumerateTrackedDevices(SystemId, DeviceType) end

---@param WorldContext UObject
---@param ControllerIndex int32
---@param MotionSource FName
---@param Time FTimespan
---@param bTimeWasUsed boolean
---@param Orientation FRotator
---@param Position FVector
---@param bProvidedLinearVelocity boolean
---@param LinearVelocity FVector
---@param bProvidedAngularVelocity boolean
---@param AngularVelocityRadPerSec FVector
---@param bProvidedLinearAcceleration boolean
---@param LinearAcceleration FVector
function UHeadMountedDisplayFunctionLibrary:GetControllerTransformForTime(WorldContext, ControllerIndex, MotionSource, Time, bTimeWasUsed, Orientation, Position, bProvidedLinearVelocity, LinearVelocity, bProvidedAngularVelocity, AngularVelocityRadPerSec, bProvidedLinearAcceleration, LinearAcceleration) end

---@param XRDeviceId FXRDeviceId
---@param bIsTracked boolean
---@param Orientation FRotator
---@param bHasPositionalTracking boolean
---@param Position FVector
function UHeadMountedDisplayFunctionLibrary:GetDevicePose(XRDeviceId, bIsTracked, Orientation, bHasPositionalTracking, Position) end

---@param WorldContext UObject
---@param XRDeviceId FXRDeviceId
---@param bIsTracked boolean
---@param Orientation FRotator
---@param bHasPositionalTracking boolean
---@param Position FVector
function UHeadMountedDisplayFunctionLibrary:GetDeviceWorldPose(WorldContext, XRDeviceId, bIsTracked, Orientation, bHasPositionalTracking, Position) end

---@param WorldContext UObject
---@param HMDData FXRHMDData
function UHeadMountedDisplayFunctionLibrary:GetHMDData(WorldContext, HMDData) end

function UHeadMountedDisplayFunctionLibrary:GetHMDDeviceName() end

function UHeadMountedDisplayFunctionLibrary:GetHMDWornState() end

---@param WorldContext UObject
---@param Hand EControllerHand
---@param MotionControllerData FXRMotionControllerData
function UHeadMountedDisplayFunctionLibrary:GetMotionControllerData(WorldContext, Hand, MotionControllerData) end

function UHeadMountedDisplayFunctionLibrary:GetNumOfTrackingSensors() end

---@param DeviceRotation FRotator
---@param DevicePosition FVector
function UHeadMountedDisplayFunctionLibrary:GetOrientationAndPosition(DeviceRotation, DevicePosition) end

function UHeadMountedDisplayFunctionLibrary:GetPixelDensity() end

---@param Origin EHMDTrackingOrigin::Type
function UHeadMountedDisplayFunctionLibrary:GetPlayAreaBounds(Origin) end

---@param CameraOrigin FVector
---@param CameraRotation FRotator
---@param HFOV float
---@param VFOV float
---@param CameraDistance float
---@param NearPlane float
---@param FarPlane float
function UHeadMountedDisplayFunctionLibrary:GetPositionalTrackingCameraParameters(CameraOrigin, CameraRotation, HFOV, VFOV, CameraDistance, NearPlane, FarPlane) end

function UHeadMountedDisplayFunctionLibrary:GetScreenPercentage() end

function UHeadMountedDisplayFunctionLibrary:GetTrackingOrigin() end

---@param Origin FVector
---@param Rotation FRotator
---@param LeftFOV float
---@param RightFOV float
---@param TopFOV float
---@param BottomFOV float
---@param Distance float
---@param NearPlane float
---@param FarPlane float
---@param IsActive boolean
---@param Index int32
function UHeadMountedDisplayFunctionLibrary:GetTrackingSensorParameters(Origin, Rotation, LeftFOV, RightFOV, TopFOV, BottomFOV, Distance, NearPlane, FarPlane, IsActive, Index) end

---@param WorldContext UObject
function UHeadMountedDisplayFunctionLibrary:GetTrackingToWorldTransform(WorldContext) end

---@param bUseFocus boolean
---@param bHasFocus boolean
function UHeadMountedDisplayFunctionLibrary:GetVRFocusState(bUseFocus, bHasFocus) end

function UHeadMountedDisplayFunctionLibrary:GetVersionString() end

---@param WorldContext UObject
function UHeadMountedDisplayFunctionLibrary:GetWorldToMetersScale(WorldContext) end

function UHeadMountedDisplayFunctionLibrary:GetXRSystemFlags() end

function UHeadMountedDisplayFunctionLibrary:HasValidTrackingPosition() end

---@param XRDeviceId FXRDeviceId
function UHeadMountedDisplayFunctionLibrary:IsDeviceTracking(XRDeviceId) end

function UHeadMountedDisplayFunctionLibrary:IsHeadMountedDisplayConnected() end

function UHeadMountedDisplayFunctionLibrary:IsHeadMountedDisplayEnabled() end

function UHeadMountedDisplayFunctionLibrary:IsInLowPersistenceMode() end

function UHeadMountedDisplayFunctionLibrary:IsSpectatorScreenModeControllable() end

---@param Yaw float
---@param Options EOrientPositionSelector::Type
function UHeadMountedDisplayFunctionLibrary:ResetOrientationAndPosition(Yaw, Options) end

---@param Near float
---@param Far float
function UHeadMountedDisplayFunctionLibrary:SetClippingPlanes(Near, Far) end

---@param Mode ESpectatorScreenMode
function UHeadMountedDisplayFunctionLibrary:SetSpectatorScreenMode(Mode) end

---@param EyeRectMin FVector2D
---@param EyeRectMax FVector2D
---@param TextureRectMin FVector2D
---@param TextureRectMax FVector2D
---@param bDrawEyeFirst boolean
---@param bClearBlack boolean
---@param bUseAlpha boolean
function UHeadMountedDisplayFunctionLibrary:SetSpectatorScreenModeTexturePlusEyeLayout(EyeRectMin, EyeRectMax, TextureRectMin, TextureRectMax, bDrawEyeFirst, bClearBlack, bUseAlpha) end

---@param InTexture UTexture
function UHeadMountedDisplayFunctionLibrary:SetSpectatorScreenTexture(InTexture) end

---@param Origin EHMDTrackingOrigin::Type
function UHeadMountedDisplayFunctionLibrary:SetTrackingOrigin(Origin) end

---@param WorldContext UObject
---@param NewScale float
function UHeadMountedDisplayFunctionLibrary:SetWorldToMetersScale(WorldContext, NewScale) end

---@param InDisconnectedDelegate FSetXRDisconnectDelegateInDisconnectedDelegate
function UHeadMountedDisplayFunctionLibrary:SetXRDisconnectDelegate(InDisconnectedDelegate) end

---@param ActionName FName
---@param InDelegate FSetXRTimedInputActionDelegateInDelegate
function UHeadMountedDisplayFunctionLibrary:SetXRTimedInputActionDelegate(ActionName, InDelegate) end

---@param ExternalTrackingTransform FTransform
function UHeadMountedDisplayFunctionLibrary:UpdateExternalTrackingHMDPosition(ExternalTrackingTransform) end

---@param jointIndex int32
---@param bValueFound boolean
function UMotionControllerComponent:GetHandJointPosition(jointIndex, bValueFound) end

---@param InName FName
---@param bValueFound boolean
function UMotionControllerComponent:GetParameterValue(InName, bValueFound) end

function UMotionControllerComponent:GetTrackingSource() end

function UMotionControllerComponent:IsTracked() end

function UMotionControllerComponent:OnMotionControllerUpdated() end

---@param NewPlayer int32
function UMotionControllerComponent:SetAssociatedPlayerIndex(NewPlayer) end

---@param NewDisplayMesh UStaticMesh
function UMotionControllerComponent:SetCustomDisplayMesh(NewDisplayMesh) end

---@param NewDisplayModelSource FName
function UMotionControllerComponent:SetDisplayModelSource(NewDisplayModelSource) end

---@param bShowControllerModel boolean
function UMotionControllerComponent:SetShowDeviceModel(bShowControllerModel) end

---@param NewSource FName
function UMotionControllerComponent:SetTrackingMotionSource(NewSource) end

---@param NewSource EControllerHand
function UMotionControllerComponent:SetTrackingSource(NewSource) end

---@param MotionControllerComponent UMotionControllerComponent
function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingForComponent(MotionControllerComponent) end

function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingOfAllControllers() end

---@param PlayerIndex int32
function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingOfControllersForPlayer(PlayerIndex) end

---@param PlayerIndex int32
---@param Hand EControllerHand
function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingOfDevice(PlayerIndex, Hand) end

---@param PlayerIndex int32
---@param SourceName FName
function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingOfSource(PlayerIndex, SourceName) end

---@param MotionControllerComponent UMotionControllerComponent
function UMotionTrackedDeviceFunctionLibrary:EnableMotionTrackingForComponent(MotionControllerComponent) end

---@param PlayerIndex int32
---@param Hand EControllerHand
function UMotionTrackedDeviceFunctionLibrary:EnableMotionTrackingOfDevice(PlayerIndex, Hand) end

---@param PlayerIndex int32
---@param SourceName FName
function UMotionTrackedDeviceFunctionLibrary:EnableMotionTrackingOfSource(PlayerIndex, SourceName) end

function UMotionTrackedDeviceFunctionLibrary:EnumerateMotionSources() end

function UMotionTrackedDeviceFunctionLibrary:GetActiveTrackingSystemName() end

function UMotionTrackedDeviceFunctionLibrary:GetMaximumMotionTrackedControllerCount() end

function UMotionTrackedDeviceFunctionLibrary:GetMotionTrackingEnabledControllerCount() end

---@param PlayerIndex int32
---@param SourceName FName
function UMotionTrackedDeviceFunctionLibrary:IsMotionSourceTracking(PlayerIndex, SourceName) end

function UMotionTrackedDeviceFunctionLibrary:IsMotionTrackedDeviceCountManagementNecessary() end

---@param MotionControllerComponent UMotionControllerComponent
function UMotionTrackedDeviceFunctionLibrary:IsMotionTrackingEnabledForComponent(MotionControllerComponent) end

---@param PlayerIndex int32
---@param Hand EControllerHand
function UMotionTrackedDeviceFunctionLibrary:IsMotionTrackingEnabledForDevice(PlayerIndex, Hand) end

---@param PlayerIndex int32
---@param SourceName FName
function UMotionTrackedDeviceFunctionLibrary:IsMotionTrackingEnabledForSource(PlayerIndex, SourceName) end

---@param Enable boolean
function UMotionTrackedDeviceFunctionLibrary:SetIsControllerMotionTrackingEnabledByDefault(Enable) end

---@param Target AActor
---@param XRDeviceId FXRDeviceId
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
function UXRAssetFunctionLibrary:AddDeviceVisualizationComponentBlocking(Target, XRDeviceId, bManualAttachment, RelativeTransform) end

---@param Target AActor
---@param SystemName FName
---@param DeviceName FName
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
---@param XRDeviceId FXRDeviceId
function UXRAssetFunctionLibrary:AddNamedDeviceVisualizationComponentBlocking(Target, SystemName, DeviceName, bManualAttachment, RelativeTransform, XRDeviceId) end

---@param Texture UTexture
---@param Translation FVector
---@param Rotation FRotator
---@param Size FVector2D
---@param DeltaRotation FRotator
---@param bClearBeforeAdd boolean
function UXRLoadingScreenFunctionLibrary:AddLoadingScreenSplash(Texture, Translation, Rotation, Size, DeltaRotation, bClearBeforeAdd) end

function UXRLoadingScreenFunctionLibrary:ClearLoadingScreenSplashes() end

function UXRLoadingScreenFunctionLibrary:HideLoadingScreen() end

---@param Texture UTexture
---@param Scale FVector2D
---@param Offset FVector
---@param bShowLoadingMovie boolean
---@param bShowOnSet boolean
function UXRLoadingScreenFunctionLibrary:SetLoadingScreen(Texture, Scale, Offset, bShowLoadingMovie, bShowOnSet) end

function UXRLoadingScreenFunctionLibrary:ShowLoadingScreen() end
