---@meta

---@class AARActor : AActor
local AARActor = {}

---@class AAROriginActor : AActor
local AAROriginActor = {}

---@class AARSharedWorldGameMode : AGameMode
---@field BufferSizePerChunk int32
local AARSharedWorldGameMode = {}

---@class AARSharedWorldGameState : AGameState
---@field PreviewImageData TArray<uint8>
---@field ARWorldData TArray<uint8>
---@field PreviewImageBytesTotal int32
---@field ARWorldBytesTotal int32
---@field PreviewImageBytesDelivered int32
---@field ARWorldBytesDelivered int32
local AARSharedWorldGameState = {}

---@class AARSharedWorldPlayerController : APlayerController
local AARSharedWorldPlayerController = {}

---@class AARSkyLight : ASkyLight
---@field CaptureProbe UAREnvironmentCaptureProbe
local AARSkyLight = {}

---@class FARCameraIntrinsics
---@field ImageResolution FIntPoint
---@field FocalLength FVector2D
---@field PrincipalPoint FVector2D
local FARCameraIntrinsics = {}

---@class FAREnvironmentProbeUpdatePayload
---@field WorldTransform FTransform
local FAREnvironmentProbeUpdatePayload = {}

---@class FARFaceUpdatePayload
---@field SessionPayload FARSessionPayload
---@field LeftEyePosition FVector
---@field RightEyePosition FVector
---@field LookAtTarget FVector
local FARFaceUpdatePayload = {}

---@class FARGeoAnchorUpdatePayload
---@field SessionPayload FARSessionPayload
---@field WorldTransform FTransform
---@field Longitude float
---@field Latitude float
---@field AltitudeMeters float
---@field AltitudeSource EARAltitudeSource
---@field AnchorName FString
local FARGeoAnchorUpdatePayload = {}

---@class FARImageUpdatePayload
---@field SessionPayload FARSessionPayload
---@field WorldTransform FTransform
---@field DetectedImage UARCandidateImage
---@field EstimatedSize FVector2D
local FARImageUpdatePayload = {}

---@class FARMeshUpdatePayload
---@field SessionPayload FARSessionPayload
---@field WorldTransform FTransform
---@field ObjectClassification EARObjectClassification
local FARMeshUpdatePayload = {}

---@class FARObjectUpdatePayload
---@field WorldTransform FTransform
local FARObjectUpdatePayload = {}

---@class FARPlaneUpdatePayload
---@field SessionPayload FARSessionPayload
---@field WorldTransform FTransform
---@field Center FVector
---@field Extents FVector
---@field BoundaryVertices TArray<FVector>
---@field ObjectClassification EARObjectClassification
local FARPlaneUpdatePayload = {}

---@class FARPointUpdatePayload
local FARPointUpdatePayload = {}

---@class FARPose2D
---@field SkeletonDefinition FARSkeletonDefinition
---@field JointLocations TArray<FVector2D>
---@field IsJointTracked TArray<boolean>
local FARPose2D = {}

---@class FARPose3D
---@field SkeletonDefinition FARSkeletonDefinition
---@field JointTransforms TArray<FTransform>
---@field IsJointTracked TArray<boolean>
---@field JointTransformSpace EARJointTransformSpace
local FARPose3D = {}

---@class FARPoseUpdatePayload
---@field WorldTransform FTransform
---@field JointTransforms TArray<FTransform>
local FARPoseUpdatePayload = {}

---@class FARQRCodeUpdatePayload
---@field SessionPayload FARSessionPayload
---@field WorldTransform FTransform
---@field Extents FVector
---@field QRCode FString
local FARQRCodeUpdatePayload = {}

---@class FARSessionPayload
---@field ConfigFlags int32
---@field DefaultMeshMaterial UMaterialInterface
---@field DefaultWireframeMeshMaterial UMaterialInterface
local FARSessionPayload = {}

---@class FARSessionStatus
---@field AdditionalInfo FString
---@field Status EARSessionStatus
local FARSessionStatus = {}

---@class FARSharedWorldReplicationState
---@field PreviewImageOffset int32
---@field ARWorldOffset int32
local FARSharedWorldReplicationState = {}

---@class FARSkeletonDefinition
---@field NumJoints int32
---@field JointNames TArray<FName>
---@field ParentIndices TArray<int32>
local FARSkeletonDefinition = {}

---@class FARTraceResult
---@field DistanceFromCamera float
---@field TraceChannel EARLineTraceChannels
---@field LocalTransform FTransform
---@field TrackedGeometry UARTrackedGeometry
local FARTraceResult = {}

---@class FARVideoFormat
---@field FPS int32
---@field Width int32
---@field Height int32
local FARVideoFormat = {}

---@class FTrackedGeometryGroup
---@field ARActor AARActor
---@field ARComponent UARComponent
---@field TrackedGeometry UARTrackedGeometry
local FTrackedGeometryGroup = {}

---@class UARBaseAsyncTaskBlueprintProxy : UBlueprintAsyncActionBase
local UARBaseAsyncTaskBlueprintProxy = {}

---@class UARBasicLightEstimate : UARLightEstimate
---@field AmbientIntensityLumens float
---@field AmbientColorTemperatureKelvin float
---@field AmbientColor FLinearColor
local UARBasicLightEstimate = {}

---@class UARBlueprintLibrary : UBlueprintFunctionLibrary
local UARBlueprintLibrary = {}

---@class UARCandidateImage : UDataAsset
---@field CandidateTexture UTexture2D
---@field FriendlyName FString
---@field Width float
---@field Height float
---@field Orientation EARCandidateImageOrientation
local UARCandidateImage = {}

---@class UARCandidateObject : UDataAsset
---@field CandidateObjectData TArray<uint8>
---@field FriendlyName FString
---@field BoundingBox FBox
local UARCandidateObject = {}

---@class UARComponent : USceneComponent
---@field NativeID FGuid
---@field bUseDefaultReplication boolean
---@field DefaultMeshMaterial UMaterialInterface
---@field DefaultWireframeMeshMaterial UMaterialInterface
---@field MRMeshComponent UMRMeshComponent
---@field MyTrackedGeometry UARTrackedGeometry
local UARComponent = {}

---@class UARDependencyHandler : UObject
local UARDependencyHandler = {}

---@class UAREnvironmentCaptureProbe : UARTrackedGeometry
---@field Extent FVector
---@field EnvironmentCaptureTexture UAREnvironmentCaptureProbeTexture
local UAREnvironmentCaptureProbe = {}

---@class UAREnvironmentCaptureProbeTexture : UTextureCube
---@field TextureType EARTextureType
---@field Timestamp float
---@field ExternalTextureGuid FGuid
---@field Size FVector2D
local UAREnvironmentCaptureProbeTexture = {}

---@class UAREnvironmentProbeComponent : UARComponent
---@field ReplicatedPayload FAREnvironmentProbeUpdatePayload
local UAREnvironmentProbeComponent = {}

---@class UARFaceComponent : UARComponent
---@field TransformSetting EARFaceTransformMixing
---@field bUpdateVertexNormal boolean
---@field bFaceOutOfScreen boolean
---@field ReplicatedPayload FARFaceUpdatePayload
local UARFaceComponent = {}

---@class UARFaceGeometry : UARTrackedGeometry
---@field LookAtTarget FVector
---@field bIsTracked boolean
---@field BlendShapes TMap<EARFaceBlendShape, float>
---@field LeftEyeTransform FTransform
---@field RightEyeTransform FTransform
local UARFaceGeometry = {}

---@class UARGeoAnchor : UARTrackedGeometry
local UARGeoAnchor = {}

---@class UARGeoAnchorComponent : UARComponent
---@field ReplicatedPayload FARGeoAnchorUpdatePayload
local UARGeoAnchorComponent = {}

---@class UARGeoTrackingSupport : UObject
local UARGeoTrackingSupport = {}

---@class UARGetCandidateObjectAsyncTaskBlueprintProxy : UARBaseAsyncTaskBlueprintProxy
---@field OnSuccess FARGetCandidateObjectAsyncTaskBlueprintProxyOnSuccess
---@field OnFailed FARGetCandidateObjectAsyncTaskBlueprintProxyOnFailed
local UARGetCandidateObjectAsyncTaskBlueprintProxy = {}

---@class UARImageComponent : UARComponent
---@field ReplicatedPayload FARImageUpdatePayload
local UARImageComponent = {}

---@class UARLifeCycleComponent : USceneComponent
---@field OnARActorSpawnedDelegate FARLifeCycleComponentOnARActorSpawnedDelegate
---@field OnARActorToBeDestroyedDelegate FARLifeCycleComponentOnARActorToBeDestroyedDelegate
local UARLifeCycleComponent = {}

---@class UARLightEstimate : UObject
local UARLightEstimate = {}

---@class UARMeshComponent : UARComponent
---@field ReplicatedPayload FARMeshUpdatePayload
local UARMeshComponent = {}

---@class UARMeshGeometry : UARTrackedGeometry
local UARMeshGeometry = {}

---@class UARObjectComponent : UARComponent
---@field ReplicatedPayload FARObjectUpdatePayload
local UARObjectComponent = {}

---@class UARPin : UObject
---@field TrackedGeometry UARTrackedGeometry
---@field PinnedComponent USceneComponent
---@field LocalToTrackingTransform FTransform
---@field LocalToAlignedTrackingTransform FTransform
---@field TrackingState EARTrackingState
---@field OnARTrackingStateChanged FARPinOnARTrackingStateChanged
---@field OnARTransformUpdated FARPinOnARTransformUpdated
local UARPin = {}

---@class UARPlaneComponent : UARComponent
---@field ReplicatedPayload FARPlaneUpdatePayload
local UARPlaneComponent = {}

---@class UARPlaneGeometry : UARTrackedGeometry
---@field Orientation EARPlaneOrientation
---@field Center FVector
---@field Extent FVector
---@field BoundaryPolygon TArray<FVector>
---@field SubsumedBy UARPlaneGeometry
local UARPlaneGeometry = {}

---@class UARPointComponent : UARComponent
---@field ReplicatedPayload FARPointUpdatePayload
local UARPointComponent = {}

---@class UARPoseComponent : UARComponent
---@field ReplicatedPayload FARPoseUpdatePayload
local UARPoseComponent = {}

---@class UARQRCodeComponent : UARComponent
---@field ReplicatedPayload FARQRCodeUpdatePayload
local UARQRCodeComponent = {}

---@class UARSaveWorldAsyncTaskBlueprintProxy : UARBaseAsyncTaskBlueprintProxy
---@field OnSuccess FARSaveWorldAsyncTaskBlueprintProxyOnSuccess
---@field OnFailed FARSaveWorldAsyncTaskBlueprintProxyOnFailed
local UARSaveWorldAsyncTaskBlueprintProxy = {}

---@class UARSessionConfig : UDataAsset
---@field bGenerateMeshDataFromTrackedGeometry boolean
---@field bGenerateCollisionForMeshData boolean
---@field bGenerateNavMeshForMeshData boolean
---@field bUseMeshDataForOcclusion boolean
---@field bRenderMeshDataInWireframe boolean
---@field bTrackSceneObjects boolean
---@field bUsePersonSegmentationForOcclusion boolean
---@field bUseSceneDepthForOcclusion boolean
---@field bUseAutomaticImageScaleEstimation boolean
---@field bUseStandardOnboardingUX boolean
---@field WorldAlignment EARWorldAlignment
---@field SessionType EARSessionType
---@field PlaneDetectionMode EARPlaneDetectionMode
---@field bHorizontalPlaneDetection boolean
---@field bVerticalPlaneDetection boolean
---@field bEnableAutoFocus boolean
---@field LightEstimationMode EARLightEstimationMode
---@field FrameSyncMode EARFrameSyncMode
---@field bEnableAutomaticCameraOverlay boolean
---@field bEnableAutomaticCameraTracking boolean
---@field bResetCameraTracking boolean
---@field bResetTrackedObjects boolean
---@field CandidateImages TArray<UARCandidateImage>
---@field MaxNumSimultaneousImagesTracked int32
---@field EnvironmentCaptureProbeType EAREnvironmentCaptureProbeType
---@field WorldMapData TArray<uint8>
---@field CandidateObjects TArray<UARCandidateObject>
---@field DesiredVideoFormat FARVideoFormat
---@field bUseOptimalVideoFormat boolean
---@field FaceTrackingDirection EARFaceTrackingDirection
---@field FaceTrackingUpdate EARFaceTrackingUpdate
---@field MaxNumberOfTrackedFaces int32
---@field SerializedARCandidateImageDatabase TArray<uint8>
---@field EnabledSessionTrackingFeature EARSessionTrackingFeature
---@field SceneReconstructionMethod EARSceneReconstruction
---@field PlaneComponentClass TSubclassOf<UARPlaneComponent>
---@field PointComponentClass TSubclassOf<UARPointComponent>
---@field FaceComponentClass TSubclassOf<UARFaceComponent>
---@field ImageComponentClass TSubclassOf<UARImageComponent>
---@field QRCodeComponentClass TSubclassOf<UARQRCodeComponent>
---@field PoseComponentClass TSubclassOf<UARPoseComponent>
---@field EnvironmentProbeComponentClass TSubclassOf<UAREnvironmentProbeComponent>
---@field ObjectComponentClass TSubclassOf<UARObjectComponent>
---@field MeshComponentClass TSubclassOf<UARMeshComponent>
---@field GeoAnchorComponentClass TSubclassOf<UARGeoAnchorComponent>
---@field DefaultMeshMaterial UMaterialInterface
---@field DefaultWireframeMeshMaterial UMaterialInterface
local UARSessionConfig = {}

---@class UARTexture : UTexture
---@field TextureType EARTextureType
---@field Timestamp float
---@field ExternalTextureGuid FGuid
---@field Size FVector2D
local UARTexture = {}

---@class UARTextureCameraDepth : UARTexture
---@field DepthQuality EARDepthQuality
---@field DepthAccuracy EARDepthAccuracy
---@field bIsTemporallySmoothed boolean
local UARTextureCameraDepth = {}

---@class UARTextureCameraImage : UARTexture
local UARTextureCameraImage = {}

---@class UARTraceResultDummy : UObject
local UARTraceResultDummy = {}

---@class UARTraceResultLibrary : UBlueprintFunctionLibrary
local UARTraceResultLibrary = {}

---@class UARTrackableNotifyComponent : UActorComponent
---@field OnAddTrackedGeometry FARTrackableNotifyComponentOnAddTrackedGeometry
---@field OnUpdateTrackedGeometry FARTrackableNotifyComponentOnUpdateTrackedGeometry
---@field OnRemoveTrackedGeometry FARTrackableNotifyComponentOnRemoveTrackedGeometry
---@field OnAddTrackedPlane FARTrackableNotifyComponentOnAddTrackedPlane
---@field OnUpdateTrackedPlane FARTrackableNotifyComponentOnUpdateTrackedPlane
---@field OnRemoveTrackedPlane FARTrackableNotifyComponentOnRemoveTrackedPlane
---@field OnAddTrackedPoint FARTrackableNotifyComponentOnAddTrackedPoint
---@field OnUpdateTrackedPoint FARTrackableNotifyComponentOnUpdateTrackedPoint
---@field OnRemoveTrackedPoint FARTrackableNotifyComponentOnRemoveTrackedPoint
---@field OnAddTrackedImage FARTrackableNotifyComponentOnAddTrackedImage
---@field OnUpdateTrackedImage FARTrackableNotifyComponentOnUpdateTrackedImage
---@field OnRemoveTrackedImage FARTrackableNotifyComponentOnRemoveTrackedImage
---@field OnAddTrackedFace FARTrackableNotifyComponentOnAddTrackedFace
---@field OnUpdateTrackedFace FARTrackableNotifyComponentOnUpdateTrackedFace
---@field OnRemoveTrackedFace FARTrackableNotifyComponentOnRemoveTrackedFace
---@field OnAddTrackedEnvProbe FARTrackableNotifyComponentOnAddTrackedEnvProbe
---@field OnUpdateTrackedEnvProbe FARTrackableNotifyComponentOnUpdateTrackedEnvProbe
---@field OnRemoveTrackedEnvProbe FARTrackableNotifyComponentOnRemoveTrackedEnvProbe
---@field OnAddTrackedObject FARTrackableNotifyComponentOnAddTrackedObject
---@field OnUpdateTrackedObject FARTrackableNotifyComponentOnUpdateTrackedObject
---@field OnRemoveTrackedObject FARTrackableNotifyComponentOnRemoveTrackedObject
local UARTrackableNotifyComponent = {}

---@class UARTrackedGeometry : UObject
---@field UniqueId FGuid
---@field LocalToTrackingTransform FTransform
---@field LocalToAlignedTrackingTransform FTransform
---@field TrackingState EARTrackingState
---@field UnderlyingMesh UMRMeshComponent
---@field ObjectClassification EARObjectClassification
---@field SpatialMeshUsageFlags EARSpatialMeshUsageFlags
---@field LastUpdateFrameNumber int32
---@field DebugName FName
local UARTrackedGeometry = {}

---@class UARTrackedImage : UARTrackedGeometry
---@field DetectedImage UARCandidateImage
---@field EstimatedSize FVector2D
local UARTrackedImage = {}

---@class UARTrackedObject : UARTrackedGeometry
---@field DetectedObject UARCandidateObject
local UARTrackedObject = {}

---@class UARTrackedPoint : UARTrackedGeometry
local UARTrackedPoint = {}

---@class UARTrackedPose : UARTrackedGeometry
---@field TrackedPose FARPose3D
local UARTrackedPose = {}

---@class UARTrackedQRCode : UARTrackedImage
---@field QRCode FString
---@field Version int32
local UARTrackedQRCode = {}

---@class UARTypesDummyClass : UObject
local UARTypesDummyClass = {}

---@class UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy : UARBaseAsyncTaskBlueprintProxy
---@field OnSuccess FCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxyOnSuccess
---@field OnFailed FCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxyOnFailed
local UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy = {}

---@class UGetGeoLocationAsyncTaskBlueprintProxy : UARBaseAsyncTaskBlueprintProxy
---@field OnSuccess FGetGeoLocationAsyncTaskBlueprintProxyOnSuccess
---@field OnFailed FGetGeoLocationAsyncTaskBlueprintProxyOnFailed
local UGetGeoLocationAsyncTaskBlueprintProxy = {}

---@param InComponentClass TSubclassOf<UARComponent>
---@param NativeID FGuid
function AARActor:AddARComponent(InComponentClass, NativeID) end

function AARSharedWorldGameMode:GetARSharedWorldGameState() end

---@param ARWorldData TArray<uint8>
function AARSharedWorldGameMode:SetARSharedWorldData(ARWorldData) end

function AARSharedWorldGameMode:SetARWorldSharingIsReady() end

---@param ImageData TArray<uint8>
function AARSharedWorldGameMode:SetPreviewImageData(ImageData) end

function AARSharedWorldGameState:K2_OnARWorldMapIsReady() end

---@param PreviewImageSize int32
---@param ARWorldDataSize int32
function AARSharedWorldPlayerController:ClientInitSharedWorld(PreviewImageSize, ARWorldDataSize) end

---@param Offset int32
---@param Buffer TArray<uint8>
function AARSharedWorldPlayerController:ClientUpdateARWorldData(Offset, Buffer) end

---@param Offset int32
---@param Buffer TArray<uint8>
function AARSharedWorldPlayerController:ClientUpdatePreviewImageData(Offset, Buffer) end

function AARSharedWorldPlayerController:ServerMarkReadyForReceiving() end

---@param InCaptureProbe UAREnvironmentCaptureProbe
function AARSkyLight:SetEnvironmentCaptureProbe(InCaptureProbe) end

function UARBasicLightEstimate:GetAmbientColor() end

function UARBasicLightEstimate:GetAmbientColorTemperatureKelvin() end

function UARBasicLightEstimate:GetAmbientIntensityLumens() end

---@param Location FVector
---@param Extent FVector
function UARBlueprintLibrary:AddManualEnvironmentCaptureProbe(Location, Extent) end

---@param SessionConfig UARSessionConfig
---@param CandidateTexture UTexture2D
---@param FriendlyName FString
---@param PhysicalWidth float
function UARBlueprintLibrary:AddRuntimeCandidateImage(SessionConfig, CandidateTexture, FriendlyName, PhysicalWidth) end

---@param WorldTransform FTransform
---@param PointName FString
---@param bDeletePointsWithSameName boolean
function UARBlueprintLibrary:AddTrackedPointWithName(WorldTransform, PointName, bDeletePointsWithSameName) end

---@param TransformInFirstCoordinateSystem FTransform
---@param TransformInSecondCoordinateSystem FTransform
---@param AlignmentTransform FTransform
function UARBlueprintLibrary:CalculateAlignmentTransform(TransformInFirstCoordinateSystem, TransformInSecondCoordinateSystem, AlignmentTransform) end

---@param StartPoints TArray<FVector>
---@param EndPoints TArray<FVector>
---@param ClosestIntersection FVector
function UARBlueprintLibrary:CalculateClosestIntersection(StartPoints, EndPoints, ClosestIntersection) end

---@param ARPin UARPin
---@param WorldContextObject UObject
---@param Color FLinearColor
---@param Scale float
---@param PersistForSeconds float
function UARBlueprintLibrary:DebugDrawPin(ARPin, WorldContextObject, Color, Scale, PersistForSeconds) end

---@param TrackedGeometry UARTrackedGeometry
---@param WorldContextObject UObject
---@param Color FLinearColor
---@param OutlineThickness float
---@param PersistForSeconds float
function UARBlueprintLibrary:DebugDrawTrackedGeometry(TrackedGeometry, WorldContextObject, Color, OutlineThickness, PersistForSeconds) end

---@param PointName FString
function UARBlueprintLibrary:FindTrackedPointsByName(PointName) end

function UARBlueprintLibrary:GetARSessionStatus() end

---@param TextureType EARTextureType
function UARBlueprintLibrary:GetARTexture(TextureType) end

function UARBlueprintLibrary:GetARWorldScale() end

function UARBlueprintLibrary:GetAlignmentTransform() end

function UARBlueprintLibrary:GetAllGeometries() end

---@param GeometryClass TSubclassOf<UARTrackedGeometry>
function UARBlueprintLibrary:GetAllGeometriesByClass(GeometryClass) end

function UARBlueprintLibrary:GetAllPins() end

function UARBlueprintLibrary:GetAllTracked2DPoses() end

function UARBlueprintLibrary:GetAllTrackedEnvironmentCaptureProbes() end

function UARBlueprintLibrary:GetAllTrackedImages() end

function UARBlueprintLibrary:GetAllTrackedPlanes() end

function UARBlueprintLibrary:GetAllTrackedPoints() end

function UARBlueprintLibrary:GetAllTrackedPoses() end

function UARBlueprintLibrary:GetCameraDepth() end

function UARBlueprintLibrary:GetCameraImage() end

---@param OutCameraIntrinsics FARCameraIntrinsics
function UARBlueprintLibrary:GetCameraIntrinsics(OutCameraIntrinsics) end

function UARBlueprintLibrary:GetCurrentLightEstimate() end

function UARBlueprintLibrary:GetNumberOfTrackedFacesSupported() end

---@param InWorldLocation FVector
---@param OutClassification EARObjectClassification
---@param OutClassificationLocation FVector
---@param MaxLocationDiff float
function UARBlueprintLibrary:GetObjectClassificationAtLocation(InWorldLocation, OutClassification, OutClassificationLocation, MaxLocationDiff) end

function UARBlueprintLibrary:GetPersonSegmentationDepthImage() end

function UARBlueprintLibrary:GetPersonSegmentationImage() end

function UARBlueprintLibrary:GetPointCloud() end

function UARBlueprintLibrary:GetSessionConfig() end

---@param SessionType EARSessionType
function UARBlueprintLibrary:GetSupportedVideoFormats(SessionType) end

function UARBlueprintLibrary:GetTrackingQuality() end

function UARBlueprintLibrary:GetTrackingQualityReason() end

function UARBlueprintLibrary:GetWorldMappingStatus() end

function UARBlueprintLibrary:IsARPinLocalStoreReady() end

function UARBlueprintLibrary:IsARPinLocalStoreSupported() end

function UARBlueprintLibrary:IsARSupported() end

---@param SessionType EARSessionType
---@param SceneReconstructionMethod EARSceneReconstruction
function UARBlueprintLibrary:IsSceneReconstructionSupported(SessionType, SceneReconstructionMethod) end

---@param SessionType EARSessionType
---@param SessionTrackingFeature EARSessionTrackingFeature
function UARBlueprintLibrary:IsSessionTrackingFeatureSupported(SessionType, SessionTrackingFeature) end

---@param SessionType EARSessionType
function UARBlueprintLibrary:IsSessionTypeSupported(SessionType) end

---@param ScreenCoord FVector2D
---@param bTestFeaturePoints boolean
---@param bTestGroundPlane boolean
---@param bTestPlaneExtents boolean
---@param bTestPlaneBoundaryPolygon boolean
function UARBlueprintLibrary:LineTraceTrackedObjects(ScreenCoord, bTestFeaturePoints, bTestGroundPlane, bTestPlaneExtents, bTestPlaneBoundaryPolygon) end

---@param Start FVector
---@param End FVector
---@param bTestFeaturePoints boolean
---@param bTestGroundPlane boolean
---@param bTestPlaneExtents boolean
---@param bTestPlaneBoundaryPolygon boolean
function UARBlueprintLibrary:LineTraceTrackedObjects3D(Start, End, bTestFeaturePoints, bTestGroundPlane, bTestPlaneExtents, bTestPlaneBoundaryPolygon) end

function UARBlueprintLibrary:LoadARPinsFromLocalStore() end

function UARBlueprintLibrary:PauseARSession() end

---@param ComponentToPin USceneComponent
---@param PinToWorldTransform FTransform
---@param TrackedGeometry UARTrackedGeometry
---@param DebugName FName
function UARBlueprintLibrary:PinComponent(ComponentToPin, PinToWorldTransform, TrackedGeometry, DebugName) end

---@param ComponentToPin USceneComponent
---@param Pin UARPin
function UARBlueprintLibrary:PinComponentToARPin(ComponentToPin, Pin) end

---@param ComponentToPin USceneComponent
---@param TraceResult FARTraceResult
---@param DebugName FName
function UARBlueprintLibrary:PinComponentToTraceResult(ComponentToPin, TraceResult, DebugName) end

---@param InSaveName FName
function UARBlueprintLibrary:RemoveARPinFromLocalStore(InSaveName) end

function UARBlueprintLibrary:RemoveAllARPinsFromLocalStore() end

---@param PinToRemove UARPin
function UARBlueprintLibrary:RemovePin(PinToRemove) end

---@param InSize FIntPoint
function UARBlueprintLibrary:ResizeXRCamera(InSize) end

---@param InSaveName FName
---@param InPin UARPin
function UARBlueprintLibrary:SaveARPinToLocalStore(InSaveName, InPin) end

---@param OriginLocation FVector
---@param OriginRotation FRotator
---@param bIsTransformInWorldSpace boolean
---@param bMaintainUpDirection boolean
function UARBlueprintLibrary:SetARWorldOriginLocationAndRotation(OriginLocation, OriginRotation, bIsTransformInWorldSpace, bMaintainUpDirection) end

---@param InWorldScale float
function UARBlueprintLibrary:SetARWorldScale(InWorldScale) end

---@param InAlignmentTransform FTransform
function UARBlueprintLibrary:SetAlignmentTransform(InAlignmentTransform) end

---@param bOnOff boolean
function UARBlueprintLibrary:SetEnabledXRCamera(bOnOff) end

---@param SessionConfig UARSessionConfig
function UARBlueprintLibrary:StartARSession(SessionConfig) end

function UARBlueprintLibrary:StopARSession() end

---@param bOnOff boolean
---@param CaptureType EARCaptureType
function UARBlueprintLibrary:ToggleARCapture(bOnOff, CaptureType) end

---@param ComponentToUnpin USceneComponent
function UARBlueprintLibrary:UnpinComponent(ComponentToUnpin) end

function UARCandidateImage:GetCandidateTexture() end

function UARCandidateImage:GetFriendlyName() end

function UARCandidateImage:GetOrientation() end

function UARCandidateImage:GetPhysicalHeight() end

function UARCandidateImage:GetPhysicalWidth() end

function UARCandidateObject:GetBoundingBox() end

function UARCandidateObject:GetCandidateObjectData() end

function UARCandidateObject:GetFriendlyName() end

---@param InBoundingBox FBox
function UARCandidateObject:SetBoundingBox(InBoundingBox) end

---@param InCandidateObject TArray<uint8>
function UARCandidateObject:SetCandidateObjectData(InCandidateObject) end

---@param NewName FString
function UARCandidateObject:SetFriendlyName(NewName) end

function UARComponent:GetMRMesh() end

function UARComponent:OnRep_Payload() end

function UARComponent:ReceiveRemove() end

---@param NativeID FGuid
function UARComponent:SetNativeID(NativeID) end

function UARComponent:UpdateVisualization() end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param OutAvailability EARServiceAvailability
function UARDependencyHandler:CheckARServiceAvailability(WorldContextObject, LatentInfo, OutAvailability) end

function UARDependencyHandler:GetARDependencyHandler() end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param OutInstallResult EARServiceInstallRequestResult
function UARDependencyHandler:InstallARService(WorldContextObject, LatentInfo, OutInstallResult) end

---@param WorldContextObject UObject
---@param SessionConfig UARSessionConfig
---@param LatentInfo FLatentActionInfo
---@param OutPermissionResult EARServicePermissionRequestResult
function UARDependencyHandler:RequestARSessionPermission(WorldContextObject, SessionConfig, LatentInfo, OutPermissionResult) end

---@param WorldContextObject UObject
---@param SessionConfig UARSessionConfig
---@param LatentInfo FLatentActionInfo
function UARDependencyHandler:StartARSessionLatent(WorldContextObject, SessionConfig, LatentInfo) end

function UAREnvironmentCaptureProbe:GetEnvironmentCaptureTexture() end

function UAREnvironmentCaptureProbe:GetExtent() end

---@param Payload FAREnvironmentProbeUpdatePayload
function UAREnvironmentProbeComponent:ReceiveAdd(Payload) end

---@param Payload FAREnvironmentProbeUpdatePayload
function UAREnvironmentProbeComponent:ReceiveUpdate(Payload) end

---@param NewPayload FAREnvironmentProbeUpdatePayload
function UAREnvironmentProbeComponent:ServerUpdatePayload(NewPayload) end

---@param Payload FARFaceUpdatePayload
function UARFaceComponent:ReceiveAdd(Payload) end

---@param Payload FARFaceUpdatePayload
function UARFaceComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARFaceUpdatePayload
function UARFaceComponent:ServerUpdatePayload(NewPayload) end

---@param NewDebugMode EFaceComponentDebugMode
function UARFaceComponent:SetFaceComponentDebugMode(NewDebugMode) end

---@param BlendShape EARFaceBlendShape
function UARFaceGeometry:GetBlendShapeValue(BlendShape) end

function UARFaceGeometry:GetBlendShapes() end

---@param Eye EAREye
function UARFaceGeometry:GetLocalSpaceEyeTransform(Eye) end

---@param Eye EAREye
function UARFaceGeometry:GetWorldSpaceEyeTransform(Eye) end

function UARGeoAnchor:GetAltitudeMeters() end

function UARGeoAnchor:GetAltitudeSource() end

function UARGeoAnchor:GetLatitude() end

function UARGeoAnchor:GetLongitude() end

---@param Payload FARGeoAnchorUpdatePayload
function UARGeoAnchorComponent:ReceiveAdd(Payload) end

---@param Payload FARGeoAnchorUpdatePayload
function UARGeoAnchorComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARGeoAnchorUpdatePayload
function UARGeoAnchorComponent:ServerUpdatePayload(NewPayload) end

---@param NewDebugMode EGeoAnchorComponentDebugMode
function UARGeoAnchorComponent:SetGeoAnchorComponentDebugMode(NewDebugMode) end

---@param Longitude float
---@param Latitude float
---@param OptionalAnchorName FString
function UARGeoTrackingSupport:AddGeoAnchorAtLocation(Longitude, Latitude, OptionalAnchorName) end

---@param Longitude float
---@param Latitude float
---@param AltitudeMeters float
---@param OptionalAnchorName FString
function UARGeoTrackingSupport:AddGeoAnchorAtLocationWithAltitude(Longitude, Latitude, AltitudeMeters, OptionalAnchorName) end

function UARGeoTrackingSupport:GetGeoTrackingAccuracy() end

function UARGeoTrackingSupport:GetGeoTrackingState() end

function UARGeoTrackingSupport:GetGeoTrackingStateReason() end

function UARGeoTrackingSupport:GetGeoTrackingSupport() end

---@param WorldContextObject UObject
---@param Location FVector
---@param Extent FVector
function UARGetCandidateObjectAsyncTaskBlueprintProxy:ARGetCandidateObject(WorldContextObject, Location, Extent) end

---@param Payload FARImageUpdatePayload
function UARImageComponent:ReceiveAdd(Payload) end

---@param Payload FARImageUpdatePayload
function UARImageComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARImageUpdatePayload
function UARImageComponent:ServerUpdatePayload(NewPayload) end

---@param NewDebugMode EImageComponentDebugMode
function UARImageComponent:SetImageComponentDebugMode(NewDebugMode) end

---@param ComponentClass UClass
---@param NativeID FGuid
---@param SpawnedActor AARActor
function UARLifeCycleComponent:InstanceARActorSpawnedDelegate__DelegateSignature(ComponentClass, NativeID, SpawnedActor) end

---@param Actor AARActor
function UARLifeCycleComponent:InstanceARActorToBeDestroyedDelegate__DelegateSignature(Actor) end

---@param Actor AARActor
function UARLifeCycleComponent:ServerDestroyARActor(Actor) end

---@param ComponentClass UClass
---@param NativeID FGuid
function UARLifeCycleComponent:ServerSpawnARActor(ComponentClass, NativeID) end

---@param Payload FARMeshUpdatePayload
function UARMeshComponent:ReceiveAdd(Payload) end

---@param Payload FARMeshUpdatePayload
function UARMeshComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARMeshUpdatePayload
function UARMeshComponent:ServerUpdatePayload(NewPayload) end

---@param InWorldLocation FVector
---@param OutClassification EARObjectClassification
---@param OutClassificationLocation FVector
---@param MaxLocationDiff float
function UARMeshGeometry:GetObjectClassificationAtLocation(InWorldLocation, OutClassification, OutClassificationLocation, MaxLocationDiff) end

---@param Payload FARObjectUpdatePayload
function UARObjectComponent:ReceiveAdd(Payload) end

---@param Payload FARObjectUpdatePayload
function UARObjectComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARObjectUpdatePayload
function UARObjectComponent:ServerUpdatePayload(NewPayload) end

---@param World UWorld
---@param Color FLinearColor
---@param Scale float
---@param PersistForSeconds float
function UARPin:DebugDraw(World, Color, Scale, PersistForSeconds) end

function UARPin:GetDebugName() end

function UARPin:GetLocalToTrackingTransform() end

function UARPin:GetLocalToWorldTransform() end

function UARPin:GetPinnedComponent() end

function UARPin:GetTrackedGeometry() end

function UARPin:GetTrackingState() end

function UARPlaneComponent:GetObjectClassificationDebugColors() end

---@param Payload FARPlaneUpdatePayload
function UARPlaneComponent:ReceiveAdd(Payload) end

---@param Payload FARPlaneUpdatePayload
function UARPlaneComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARPlaneUpdatePayload
function UARPlaneComponent:ServerUpdatePayload(NewPayload) end

---@param InColors TMap<EARObjectClassification, FLinearColor>
function UARPlaneComponent:SetObjectClassificationDebugColors(InColors) end

---@param NewDebugMode EPlaneComponentDebugMode
function UARPlaneComponent:SetPlaneComponentDebugMode(NewDebugMode) end

function UARPlaneGeometry:GetBoundaryPolygonInLocalSpace() end

function UARPlaneGeometry:GetCenter() end

function UARPlaneGeometry:GetExtent() end

function UARPlaneGeometry:GetOrientation() end

function UARPlaneGeometry:GetSubsumedBy() end

---@param Payload FARPointUpdatePayload
function UARPointComponent:ReceiveAdd(Payload) end

---@param Payload FARPointUpdatePayload
function UARPointComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARPointUpdatePayload
function UARPointComponent:ServerUpdatePayload(NewPayload) end

---@param Payload FARPoseUpdatePayload
function UARPoseComponent:ReceiveAdd(Payload) end

---@param Payload FARPoseUpdatePayload
function UARPoseComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARPoseUpdatePayload
function UARPoseComponent:ServerUpdatePayload(NewPayload) end

---@param NewDebugMode EPoseComponentDebugMode
function UARPoseComponent:SetPoseComponentDebugMode(NewDebugMode) end

---@param Payload FARQRCodeUpdatePayload
function UARQRCodeComponent:ReceiveAdd(Payload) end

---@param Payload FARQRCodeUpdatePayload
function UARQRCodeComponent:ReceiveUpdate(Payload) end

---@param NewPayload FARQRCodeUpdatePayload
function UARQRCodeComponent:ServerUpdatePayload(NewPayload) end

---@param NewDebugMode EQRCodeComponentDebugMode
function UARQRCodeComponent:SetQRCodeComponentDebugMode(NewDebugMode) end

---@param WorldContextObject UObject
function UARSaveWorldAsyncTaskBlueprintProxy:ARSaveWorld(WorldContextObject) end

---@param NewCandidateImage UARCandidateImage
function UARSessionConfig:AddCandidateImage(NewCandidateImage) end

---@param CandidateObject UARCandidateObject
function UARSessionConfig:AddCandidateObject(CandidateObject) end

function UARSessionConfig:GetCandidateImageList() end

function UARSessionConfig:GetCandidateObjectList() end

function UARSessionConfig:GetDesiredVideoFormat() end

function UARSessionConfig:GetEnabledSessionTrackingFeature() end

function UARSessionConfig:GetEnvironmentCaptureProbeType() end

function UARSessionConfig:GetFaceTrackingDirection() end

function UARSessionConfig:GetFaceTrackingUpdate() end

function UARSessionConfig:GetFrameSyncMode() end

function UARSessionConfig:GetLightEstimationMode() end

function UARSessionConfig:GetMaxNumSimultaneousImagesTracked() end

function UARSessionConfig:GetPlaneDetectionMode() end

function UARSessionConfig:GetSceneReconstructionMethod() end

function UARSessionConfig:GetSessionType() end

function UARSessionConfig:GetWorldAlignment() end

function UARSessionConfig:GetWorldMapData() end

---@param InCandidateObjects TArray<UARCandidateObject>
function UARSessionConfig:SetCandidateObjectList(InCandidateObjects) end

---@param NewFormat FARVideoFormat
function UARSessionConfig:SetDesiredVideoFormat(NewFormat) end

---@param bNewValue boolean
function UARSessionConfig:SetEnableAutoFocus(bNewValue) end

---@param InDirection EARFaceTrackingDirection
function UARSessionConfig:SetFaceTrackingDirection(InDirection) end

---@param InUpdate EARFaceTrackingUpdate
function UARSessionConfig:SetFaceTrackingUpdate(InUpdate) end

---@param bNewValue boolean
function UARSessionConfig:SetResetCameraTracking(bNewValue) end

---@param bNewValue boolean
function UARSessionConfig:SetResetTrackedObjects(bNewValue) end

---@param InSceneReconstructionMethod EARSceneReconstruction
function UARSessionConfig:SetSceneReconstructionMethod(InSceneReconstructionMethod) end

---@param InSessionTrackingFeature EARSessionTrackingFeature
function UARSessionConfig:SetSessionTrackingFeatureToEnable(InSessionTrackingFeature) end

---@param WorldMapData TArray<uint8>
function UARSessionConfig:SetWorldMapData(WorldMapData) end

function UARSessionConfig:ShouldEnableAutoFocus() end

function UARSessionConfig:ShouldEnableCameraTracking() end

function UARSessionConfig:ShouldRenderCameraOverlay() end

function UARSessionConfig:ShouldResetCameraTracking() end

function UARSessionConfig:ShouldResetTrackedObjects() end

---@param TraceResult FARTraceResult
function UARTraceResultLibrary:GetDistanceFromCamera(TraceResult) end

---@param TraceResult FARTraceResult
function UARTraceResultLibrary:GetLocalToTrackingTransform(TraceResult) end

---@param TraceResult FARTraceResult
function UARTraceResultLibrary:GetLocalToWorldTransform(TraceResult) end

---@param TraceResult FARTraceResult
function UARTraceResultLibrary:GetLocalTransform(TraceResult) end

---@param TraceResult FARTraceResult
function UARTraceResultLibrary:GetTraceChannel(TraceResult) end

---@param TraceResult FARTraceResult
function UARTraceResultLibrary:GetTrackedGeometry(TraceResult) end

function UARTrackedGeometry:GetDebugName() end

function UARTrackedGeometry:GetLastUpdateFrameNumber() end

function UARTrackedGeometry:GetLastUpdateTimestamp() end

function UARTrackedGeometry:GetLocalToTrackingTransform() end

function UARTrackedGeometry:GetLocalToWorldTransform() end

function UARTrackedGeometry:GetName() end

function UARTrackedGeometry:GetObjectClassification() end

function UARTrackedGeometry:GetTrackingState() end

function UARTrackedGeometry:GetUnderlyingMesh() end

---@param InFlag EARSpatialMeshUsageFlags
function UARTrackedGeometry:HasSpatialMeshUsageFlag(InFlag) end

function UARTrackedGeometry:IsTracked() end

function UARTrackedImage:GetDetectedImage() end

function UARTrackedImage:GetEstimateSize() end

function UARTrackedObject:GetDetectedObject() end

function UARTrackedPose:GetTrackedPoseData() end

---@param WorldContextObject UObject
function UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy:CheckGeoTrackingAvailability(WorldContextObject) end

---@param WorldContextObject UObject
---@param Longitude float
---@param Latitude float
function UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy:CheckGeoTrackingAvailabilityAtLocation(WorldContextObject, Longitude, Latitude) end

---@param bIsAvailable boolean
---@param Error FString
function UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy:GeoTrackingAvailabilityDelegate__DelegateSignature(bIsAvailable, Error) end

---@param WorldContextObject UObject
---@param WorldPosition FVector
function UGetGeoLocationAsyncTaskBlueprintProxy:GetGeoLocationAtWorldPosition(WorldContextObject, WorldPosition) end

---@param Longitude float
---@param Latitude float
---@param Altitude float
---@param Error FString
function UGetGeoLocationAsyncTaskBlueprintProxy:GetGeoLocationDelegate__DelegateSignature(Longitude, Latitude, Altitude, Error) end
