---@meta

---@class AFS_SimpleSpline_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Spline USplineComponent
---@field SplineLayers TArray<FSplineLayerProps>
---@field RandomStream FRandomStream
---@field ['Max Instance Count'] int32
---@field Bias int32
---@field ['Show Segment Numbers'] boolean
---@field ['Up Vector'] FVector
---@field SegmentDistances TArray<float>
---@field ['Closed Loop'] boolean
---@field ['Show Collision Meshes'] boolean
---@field ['Segment Error Correction Bias'] float
---@field Loaded boolean
---@field SplineMeshes TArray<UFS_SplineMeshComp_C>
---@field ColliderSplineMeshes TArray<USplineMeshComponent>
---@field PrimitiveIndexOffset int32
---@field DisableFogAlpha boolean
---@field FogA UENVControlData_C
---@field FogB UENVControlData_C
local AFS_SimpleSpline_C = {}

---@param InTransform FTransform
---@param Decorator FSplineDecoratorProps
---@param Rotator FRotator
function AFS_SimpleSpline_C:AddRandomOffsets(InTransform, Decorator, Rotator) end

---@param Mesh UStaticMesh
---@param Mat_Overrides TArray<UMaterialInterface>
function AFS_SimpleSpline_C:CheckForSplineMeshMatErrors(Mesh, Mat_Overrides) end

---@param Start_Dist float
---@param End_Dist float
---@param Segment_Mesh_Count float
---@param Props FSplineLayerProps
---@param SplineMesh UStaticMesh
function AFS_SimpleSpline_C:CreateMeshSection(Start_Dist, End_Dist, Segment_Mesh_Count, Props, SplineMesh) end

---@param EntryPoint int32
function AFS_SimpleSpline_C:ExecuteUbergraph_FS_SimpleSpline(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AFS_SimpleSpline_C:GetCurrentFogDAs(Alpha, Beta) end

function AFS_SimpleSpline_C:GetLength() end

---@param InputPin float
---@param Spline USplineComponent
---@param Up_Vector FVector
---@param Right_Vector FVector
---@param Location FVector
---@param Rotation FRotator
---@param ScaleY float
---@param ScaleZ float
---@param Roll float
---@param Transform FTransform
---@param Forward_Vector FVector
function AFS_SimpleSpline_C:GetSplineValues(InputPin, Spline, Up_Vector, Right_Vector, Location, Rotation, ScaleY, ScaleZ, Roll, Transform, Forward_Vector) end

---@param Mesh_Component UPrimitiveComponent
---@param SplineLayerProps FSplineLayerProps
function AFS_SimpleSpline_C:OverrideLayerMeshMaterials(Mesh_Component, SplineLayerProps) end

function AFS_SimpleSpline_C:ReceiveBeginPlay() end

function AFS_SimpleSpline_C:Refresh() end

---@param Distance float
---@param Blacklist TSet<int32>
function AFS_SimpleSpline_C:SegmentMask(Distance, Blacklist) end

---@param DA UENVControlData_C
function AFS_SimpleSpline_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AFS_SimpleSpline_C:SetBetaFogDA(DA) end

function AFS_SimpleSpline_C:UpdateFogDAValues() end

function AFS_SimpleSpline_C:UpdateSpline() end

function AFS_SimpleSpline_C:UserConstructionScript() end

AFS_SimpleSpline_C['Auto Smooth Spline'] = function(self) end

---@param Props FSplineLayerProps
AFS_SimpleSpline_C['Build Spline With Properties'] = function(self, Props) end

---@param Mesh UStaticMesh
---@param Segment_Index int32
---@param SplineLayerProps FSplineLayerProps
AFS_SimpleSpline_C['Calculate Spline Segment Mesh Count'] = function(self, Mesh, Segment_Index, SplineLayerProps) end

---@param SplineLayerProps FSplineLayerProps
AFS_SimpleSpline_C['Even Distribute Mesh Segments'] = function(self, SplineLayerProps) end

---@param Start_Dist float
---@param End_Dist float
---@param Offset FVector2D
---@param Start_Pos FVector
---@param Start_Tan FVector
---@param End_Pos FVector
---@param End_Tan FVector
---@param StartScale FVector2D
---@param EndScale FVector2D
---@param StartRoll float
---@param EndRoll float
AFS_SimpleSpline_C['Get Mesh Start and End'] = function(self, Start_Dist, End_Dist, Offset, Start_Pos, Start_Tan, End_Pos, End_Tan, StartScale, EndScale, StartRoll, EndRoll) end

---@param SplineLayerProps FSplineLayerProps
---@param Segment int32
AFS_SimpleSpline_C['Get Spline Mesh For Segment'] = function(self, SplineLayerProps, Segment) end

---@param Segment_Index int32
---@param Length float
---@param StartDist float
---@param EndDist float
AFS_SimpleSpline_C['Get Spline Segment Values'] = function(self, Segment_Index, Length, StartDist, EndDist) end
