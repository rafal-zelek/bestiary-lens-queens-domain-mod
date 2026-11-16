---@meta

---@class FAdaptorPolygon
---@field PolygonGroupID FPolygonGroupID
---@field TriangulatedPolygonTriangleIndices TArray<FAdaptorTriangleID>
local FAdaptorPolygon = {}

---@class FAdaptorPolygon2Group
---@field RenderingSectionIndex uint32
---@field MaterialIndex int32
---@field MaxTriangles int32
local FAdaptorPolygon2Group = {}

---@class FAdaptorTriangleID : FElementID
local FAdaptorTriangleID = {}

---@class FAttributesForEdge
---@field EdgeID FEdgeID
---@field EdgeAttributes FMeshElementAttributeList
local FAttributesForEdge = {}

---@class FAttributesForVertex
---@field VertexID FVertexID
---@field VertexAttributes FMeshElementAttributeList
local FAttributesForVertex = {}

---@class FAttributesForVertexInstance
---@field VertexInstanceID FVertexInstanceID
---@field VertexInstanceAttributes FMeshElementAttributeList
local FAttributesForVertexInstance = {}

---@class FChangeVertexInstancesForPolygon
---@field PolygonID FPolygonID
---@field PerimeterVertexIndicesAndInstanceIDs TArray<FVertexIndexAndInstanceID>
---@field VertexIndicesAndInstanceIDsForEachHole TArray<FVertexInstancesForPolygonHole>
local FChangeVertexInstancesForPolygon = {}

---@class FEdgeToCreate
---@field VertexID0 FVertexID
---@field VertexID1 FVertexID
---@field EdgeAttributes FMeshElementAttributeList
---@field OriginalEdgeID FEdgeID
local FEdgeToCreate = {}

---@class FMeshElementAttributeData
---@field AttributeName FName
---@field AttributeIndex int32
---@field AttributeValue FMeshElementAttributeValue
local FMeshElementAttributeData = {}

---@class FMeshElementAttributeList
---@field Attributes TArray<FMeshElementAttributeData>
local FMeshElementAttributeList = {}

---@class FMeshElementAttributeValue
local FMeshElementAttributeValue = {}

---@class FPolygonGroupForPolygon
---@field PolygonID FPolygonID
---@field PolygonGroupID FPolygonGroupID
local FPolygonGroupForPolygon = {}

---@class FPolygonGroupToCreate
---@field PolygonGroupAttributes FMeshElementAttributeList
---@field OriginalPolygonGroupID FPolygonGroupID
local FPolygonGroupToCreate = {}

---@class FPolygonToCreate
---@field PolygonGroupID FPolygonGroupID
---@field PerimeterVertices TArray<FVertexAndAttributes>
---@field OriginalPolygonID FPolygonID
---@field PolygonEdgeHardness EPolygonEdgeHardness
local FPolygonToCreate = {}

---@class FPolygonToSplit
---@field PolygonID FPolygonID
---@field VertexPairsToSplitAt TArray<FVertexPair>
local FPolygonToSplit = {}

---@class FRenderingPolygon
---@field PolygonGroupID FPolygonGroupID
---@field TriangulatedPolygonTriangleIndices TArray<FTriangleID>
local FRenderingPolygon = {}

---@class FRenderingPolygonGroup
---@field RenderingSectionIndex uint32
---@field MaterialIndex int32
---@field MaxTriangles int32
local FRenderingPolygonGroup = {}

---@class FSubdividedQuad
---@field QuadVertex0 FSubdividedQuadVertex
---@field QuadVertex1 FSubdividedQuadVertex
---@field QuadVertex2 FSubdividedQuadVertex
---@field QuadVertex3 FSubdividedQuadVertex
local FSubdividedQuad = {}

---@class FSubdividedQuadVertex
---@field VertexPositionIndex int32
---@field TextureCoordinate0 FVector2D
---@field TextureCoordinate1 FVector2D
---@field VertexColor FColor
---@field VertexNormal FVector
---@field VertexTangent FVector
---@field VertexBinormalSign float
local FSubdividedQuadVertex = {}

---@class FSubdividedWireEdge
---@field EdgeVertex0PositionIndex int32
---@field EdgeVertex1PositionIndex int32
local FSubdividedWireEdge = {}

---@class FSubdivisionLimitData
---@field VertexPositions TArray<FVector>
---@field Sections TArray<FSubdivisionLimitSection>
---@field SubdividedWireEdges TArray<FSubdividedWireEdge>
local FSubdivisionLimitData = {}

---@class FSubdivisionLimitSection
---@field SubdividedQuads TArray<FSubdividedQuad>
local FSubdivisionLimitSection = {}

---@class FVertexAndAttributes
---@field VertexInstanceID FVertexInstanceID
---@field VertexID FVertexID
---@field PolygonVertexAttributes FMeshElementAttributeList
local FVertexAndAttributes = {}

---@class FVertexAttributesForPolygon
---@field PolygonID FPolygonID
---@field PerimeterVertexAttributeLists TArray<FMeshElementAttributeList>
---@field VertexAttributeListsForEachHole TArray<FVertexAttributesForPolygonHole>
local FVertexAttributesForPolygon = {}

---@class FVertexAttributesForPolygonHole
---@field VertexAttributeList TArray<FMeshElementAttributeList>
local FVertexAttributesForPolygonHole = {}

---@class FVertexIndexAndInstanceID
---@field ContourIndex int32
---@field VertexInstanceID FVertexInstanceID
local FVertexIndexAndInstanceID = {}

---@class FVertexInstanceToCreate
---@field VertexID FVertexID
---@field VertexInstanceAttributes FMeshElementAttributeList
---@field OriginalVertexInstanceID FVertexInstanceID
local FVertexInstanceToCreate = {}

---@class FVertexInstancesForPolygonHole
---@field VertexIndicesAndInstanceIDs TArray<FVertexIndexAndInstanceID>
local FVertexInstancesForPolygonHole = {}

---@class FVertexPair
---@field VertexID0 FVertexID
---@field VertexID1 FVertexID
local FVertexPair = {}

---@class FVertexToCreate
---@field VertexAttributes FMeshElementAttributeList
---@field OriginalVertexID FVertexID
local FVertexToCreate = {}

---@class FVertexToMove
---@field VertexID FVertexID
---@field NewVertexPosition FVector
local FVertexToMove = {}

---@class UEditableGeometryCollectionAdapter : UEditableMeshAdapter
---@field GeometryCollection UGeometryCollection
---@field OriginalGeometryCollection UGeometryCollection
---@field GeometryCollectionLODIndex int32
local UEditableGeometryCollectionAdapter = {}

---@class UEditableMesh : UObject
---@field Adapters TArray<UEditableMeshAdapter>
---@field TextureCoordinateCount int32
---@field PendingCompactCounter int32
---@field SubdivisionCount int32
local UEditableMesh = {}

---@class UEditableMeshAdapter : UObject
local UEditableMeshAdapter = {}

---@class UEditableMeshFactory : UObject
local UEditableMeshFactory = {}

---@class UEditableStaticMeshAdapter : UEditableMeshAdapter
---@field StaticMesh UStaticMesh
---@field OriginalStaticMesh UStaticMesh
---@field StaticMeshLODIndex int32
local UEditableStaticMeshAdapter = {}

function UEditableMesh:AnyChangesToUndo() end

---@param PolygonGroupForPolygons TArray<FPolygonGroupForPolygon>
---@param bDeleteOrphanedPolygonGroups boolean
function UEditableMesh:AssignPolygonsToPolygonGroups(PolygonGroupForPolygons, bDeleteOrphanedPolygonGroups) end

---@param PolygonIDs TArray<FPolygonID>
---@param BevelFixedDistance float
---@param BevelProgressTowardCenter float
---@param OutNewCenterPolygonIDs TArray<FPolygonID>
---@param OutNewSidePolygonIDs TArray<FPolygonID>
function UEditableMesh:BevelPolygons(PolygonIDs, BevelFixedDistance, BevelProgressTowardCenter, OutNewCenterPolygonIDs, OutNewSidePolygonIDs) end

---@param VertexInstancesForPolygons TArray<FChangeVertexInstancesForPolygon>
function UEditableMesh:ChangePolygonsVertexInstances(VertexInstancesForPolygons) end

function UEditableMesh:Commit() end

---@param ComponentToInstanceTo UPrimitiveComponent
function UEditableMesh:CommitInstance(ComponentToInstanceTo) end

function UEditableMesh:ComputeBoundingBox() end

function UEditableMesh:ComputeBoundingBoxAndSphere() end

---@param PolygonID FPolygonID
function UEditableMesh:ComputePolygonCenter(PolygonID) end

---@param PolygonID FPolygonID
function UEditableMesh:ComputePolygonNormal(PolygonID) end

---@param PolygonID FPolygonID
function UEditableMesh:ComputePolygonPlane(PolygonID) end

---@param PolygonIDs TArray<FPolygonID>
---@param OutSharedEdgeIDs TArray<FEdgeID>
function UEditableMesh:ComputePolygonsSharedEdges(PolygonIDs, OutSharedEdgeIDs) end

---@param EdgesToCreate TArray<FEdgeToCreate>
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:CreateEdges(EdgesToCreate, OutNewEdgeIDs) end

---@param NumVerticesToCreate int32
---@param OutNewVertexIDs TArray<FVertexID>
function UEditableMesh:CreateEmptyVertexRange(NumVerticesToCreate, OutNewVertexIDs) end

---@param PolygonID FPolygonID
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:CreateMissingPolygonPerimeterEdges(PolygonID, OutNewEdgeIDs) end

---@param PolygonGroupsToCreate TArray<FPolygonGroupToCreate>
---@param OutNewPolygonGroupIDs TArray<FPolygonGroupID>
function UEditableMesh:CreatePolygonGroups(PolygonGroupsToCreate, OutNewPolygonGroupIDs) end

---@param PolygonsToCreate TArray<FPolygonToCreate>
---@param OutNewPolygonIDs TArray<FPolygonID>
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:CreatePolygons(PolygonsToCreate, OutNewPolygonIDs, OutNewEdgeIDs) end

---@param VertexInstancesToCreate TArray<FVertexInstanceToCreate>
---@param OutNewVertexInstanceIDs TArray<FVertexInstanceID>
function UEditableMesh:CreateVertexInstances(VertexInstancesToCreate, OutNewVertexInstanceIDs) end

---@param VerticesToCreate TArray<FVertexToCreate>
---@param OutNewVertexIDs TArray<FVertexID>
function UEditableMesh:CreateVertices(VerticesToCreate, OutNewVertexIDs) end

---@param EdgeID FEdgeID
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeleteEdgeAndConnectedPolygons(EdgeID, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end

---@param EdgeIDsToDelete TArray<FEdgeID>
---@param bDeleteOrphanedVertices boolean
function UEditableMesh:DeleteEdges(EdgeIDsToDelete, bDeleteOrphanedVertices) end

---@param VertexIDsToDelete TArray<FVertexID>
function UEditableMesh:DeleteOrphanVertices(VertexIDsToDelete) end

---@param PolygonGroupIDs TArray<FPolygonGroupID>
function UEditableMesh:DeletePolygonGroups(PolygonGroupIDs) end

---@param PolygonIDsToDelete TArray<FPolygonID>
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeletePolygons(PolygonIDsToDelete, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end

---@param VertexID FVertexID
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeleteVertexAndConnectedEdgesAndPolygons(VertexID, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end

---@param VertexInstanceIDsToDelete TArray<FVertexInstanceID>
---@param bDeleteOrphanedVertices boolean
function UEditableMesh:DeleteVertexInstances(VertexInstanceIDsToDelete, bDeleteOrphanedVertices) end

---@param bFromUndo boolean
function UEditableMesh:EndModification(bFromUndo) end

---@param EdgeIDs TArray<FEdgeID>
---@param bWeldNeighbors boolean
---@param OutNewExtendedEdgeIDs TArray<FEdgeID>
function UEditableMesh:ExtendEdges(EdgeIDs, bWeldNeighbors, OutNewExtendedEdgeIDs) end

---@param VertexIDs TArray<FVertexID>
---@param bOnlyExtendClosestEdge boolean
---@param ReferencePosition FVector
---@param OutNewExtendedVertexIDs TArray<FVertexID>
function UEditableMesh:ExtendVertices(VertexIDs, bOnlyExtendClosestEdge, ReferencePosition, OutNewExtendedVertexIDs) end

---@param Polygons TArray<FPolygonID>
---@param ExtrudeDistance float
---@param bKeepNeighborsTogether boolean
---@param OutNewExtrudedFrontPolygons TArray<FPolygonID>
function UEditableMesh:ExtrudePolygons(Polygons, ExtrudeDistance, bKeepNeighborsTogether, OutNewExtrudedFrontPolygons) end

---@param EdgeID FEdgeID
---@param OutEdgeLoopEdgeIDs TArray<FEdgeID>
---@param OutFlippedEdgeIDs TArray<FEdgeID>
---@param OutReversedEdgeIDPathToTake TArray<FEdgeID>
---@param OutPolygonIDsToSplit TArray<FPolygonID>
function UEditableMesh:FindPolygonLoop(EdgeID, OutEdgeLoopEdgeIDs, OutFlippedEdgeIDs, OutReversedEdgeIDPathToTake, OutPolygonIDsToSplit) end

---@param PolygonID FPolygonID
---@param EdgeVertexID0 FVertexID
---@param EdgeVertexID1 FVertexID
function UEditableMesh:FindPolygonPerimeterEdgeNumberForVertices(PolygonID, EdgeVertexID0, EdgeVertexID1) end

---@param PolygonID FPolygonID
---@param VertexID FVertexID
function UEditableMesh:FindPolygonPerimeterVertexNumberForVertex(PolygonID, VertexID) end

---@param PolygonIDs TArray<FPolygonID>
function UEditableMesh:FlipPolygons(PolygonIDs) end

---@param PolygonIDs TArray<FPolygonID>
function UEditableMesh:GeneratePolygonTangentsAndNormals(PolygonIDs) end

---@param EdgeID FEdgeID
---@param ConnectedPolygonNumber int32
function UEditableMesh:GetEdgeConnectedPolygon(EdgeID, ConnectedPolygonNumber) end

---@param EdgeID FEdgeID
function UEditableMesh:GetEdgeConnectedPolygonCount(EdgeID) end

---@param EdgeID FEdgeID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UEditableMesh:GetEdgeConnectedPolygons(EdgeID, OutConnectedPolygonIDs) end

function UEditableMesh:GetEdgeCount() end

---@param EdgeID FEdgeID
---@param EdgeLoopIDs TArray<FEdgeID>
function UEditableMesh:GetEdgeLoopElements(EdgeID, EdgeLoopIDs) end

---@param VertexID0 FVertexID
---@param VertexID1 FVertexID
function UEditableMesh:GetEdgeThatConnectsVertices(VertexID0, VertexID1) end

---@param EdgeID FEdgeID
---@param EdgeVertexNumber int32
function UEditableMesh:GetEdgeVertex(EdgeID, EdgeVertexNumber) end

---@param EdgeID FEdgeID
---@param OutEdgeVertexID0 FVertexID
---@param OutEdgeVertexID1 FVertexID
function UEditableMesh:GetEdgeVertices(EdgeID, OutEdgeVertexID0, OutEdgeVertexID1) end

function UEditableMesh:GetFirstValidPolygonGroup() end

---@param PolygonID FPolygonID
function UEditableMesh:GetGroupForPolygon(PolygonID) end

---@param PolygonID FPolygonID
---@param OutAdjacentPolygons TArray<FPolygonID>
function UEditableMesh:GetPolygonAdjacentPolygons(PolygonID, OutAdjacentPolygons) end

function UEditableMesh:GetPolygonCount() end

---@param PolygonGroupID FPolygonGroupID
function UEditableMesh:GetPolygonCountInGroup(PolygonGroupID) end

function UEditableMesh:GetPolygonGroupCount() end

---@param PolygonGroupID FPolygonGroupID
---@param PolygonNumber int32
function UEditableMesh:GetPolygonInGroup(PolygonGroupID, PolygonNumber) end

---@param PolygonID FPolygonID
---@param PerimeterEdgeNumber int32
---@param bOutEdgeWindingIsReversedForPolygon boolean
function UEditableMesh:GetPolygonPerimeterEdge(PolygonID, PerimeterEdgeNumber, bOutEdgeWindingIsReversedForPolygon) end

---@param PolygonID FPolygonID
function UEditableMesh:GetPolygonPerimeterEdgeCount(PolygonID) end

---@param PolygonID FPolygonID
---@param OutPolygonPerimeterEdgeIDs TArray<FEdgeID>
function UEditableMesh:GetPolygonPerimeterEdges(PolygonID, OutPolygonPerimeterEdgeIDs) end

---@param PolygonID FPolygonID
---@param PolygonVertexNumber int32
function UEditableMesh:GetPolygonPerimeterVertex(PolygonID, PolygonVertexNumber) end

---@param PolygonID FPolygonID
function UEditableMesh:GetPolygonPerimeterVertexCount(PolygonID) end

---@param PolygonID FPolygonID
---@param PolygonVertexNumber int32
function UEditableMesh:GetPolygonPerimeterVertexInstance(PolygonID, PolygonVertexNumber) end

---@param PolygonID FPolygonID
---@param OutPolygonPerimeterVertexInstanceIDs TArray<FVertexInstanceID>
function UEditableMesh:GetPolygonPerimeterVertexInstances(PolygonID, OutPolygonPerimeterVertexInstanceIDs) end

---@param PolygonID FPolygonID
---@param OutPolygonPerimeterVertexIDs TArray<FVertexID>
function UEditableMesh:GetPolygonPerimeterVertices(PolygonID, OutPolygonPerimeterVertexIDs) end

---@param PolygonID FPolygonID
---@param PolygonTriangleNumber int32
function UEditableMesh:GetPolygonTriangulatedTriangle(PolygonID, PolygonTriangleNumber) end

---@param PolygonID FPolygonID
function UEditableMesh:GetPolygonTriangulatedTriangleCount(PolygonID) end

function UEditableMesh:GetSubdivisionCount() end

function UEditableMesh:GetSubdivisionLimitData() end

function UEditableMesh:GetTextureCoordinateCount() end

---@param VertexID FVertexID
---@param OutAdjacentVertexIDs TArray<FVertexID>
function UEditableMesh:GetVertexAdjacentVertices(VertexID, OutAdjacentVertexIDs) end

---@param VertexID FVertexID
---@param ConnectedEdgeNumber int32
function UEditableMesh:GetVertexConnectedEdge(VertexID, ConnectedEdgeNumber) end

---@param VertexID FVertexID
function UEditableMesh:GetVertexConnectedEdgeCount(VertexID) end

---@param VertexID FVertexID
---@param OutConnectedEdgeIDs TArray<FEdgeID>
function UEditableMesh:GetVertexConnectedEdges(VertexID, OutConnectedEdgeIDs) end

---@param VertexID FVertexID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UEditableMesh:GetVertexConnectedPolygons(VertexID, OutConnectedPolygonIDs) end

function UEditableMesh:GetVertexCount() end

---@param VertexInstanceID FVertexInstanceID
---@param ConnectedPolygonNumber int32
function UEditableMesh:GetVertexInstanceConnectedPolygon(VertexInstanceID, ConnectedPolygonNumber) end

---@param VertexInstanceID FVertexInstanceID
function UEditableMesh:GetVertexInstanceConnectedPolygonCount(VertexInstanceID) end

---@param VertexInstanceID FVertexInstanceID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UEditableMesh:GetVertexInstanceConnectedPolygons(VertexInstanceID, OutConnectedPolygonIDs) end

function UEditableMesh:GetVertexInstanceCount() end

---@param VertexInstanceID FVertexInstanceID
function UEditableMesh:GetVertexInstanceVertex(VertexInstanceID) end

---@param VertexID FVertexID
---@param NextVertexID FVertexID
---@param bOutEdgeWindingIsReversed boolean
function UEditableMesh:GetVertexPairEdge(VertexID, NextVertexID, bOutEdgeWindingIsReversed) end

function UEditableMesh:InitializeAdapters() end

---@param EdgeID FEdgeID
---@param Splits TArray<float>
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:InsertEdgeLoop(EdgeID, Splits, OutNewEdgeIDs) end

---@param PolygonIDs TArray<FPolygonID>
---@param InsetFixedDistance float
---@param InsetProgressTowardCenter float
---@param Mode EInsetPolygonsMode
---@param OutNewCenterPolygonIDs TArray<FPolygonID>
---@param OutNewSidePolygonIDs TArray<FPolygonID>
function UEditableMesh:InsetPolygons(PolygonIDs, InsetFixedDistance, InsetProgressTowardCenter, Mode, OutNewCenterPolygonIDs, OutNewSidePolygonIDs) end

function UEditableMesh:InvalidEdgeID() end

function UEditableMesh:InvalidPolygonGroupID() end

function UEditableMesh:InvalidPolygonID() end

function UEditableMesh:InvalidVertexID() end

function UEditableMesh:IsBeingModified() end

function UEditableMesh:IsCommitted() end

function UEditableMesh:IsCommittedAsInstance() end

function UEditableMesh:IsCompactAllowed() end

---@param VertexID FVertexID
function UEditableMesh:IsOrphanedVertex(VertexID) end

function UEditableMesh:IsPreviewingSubdivisions() end

function UEditableMesh:IsSpatialDatabaseAllowed() end

function UEditableMesh:IsUndoAllowed() end

---@param EdgeID FEdgeID
function UEditableMesh:IsValidEdge(EdgeID) end

---@param PolygonID FPolygonID
function UEditableMesh:IsValidPolygon(PolygonID) end

---@param PolygonGroupID FPolygonGroupID
function UEditableMesh:IsValidPolygonGroup(PolygonGroupID) end

---@param VertexID FVertexID
function UEditableMesh:IsValidVertex(VertexID) end

---@param EdgeIndex int32
function UEditableMesh:MakeEdgeID(EdgeIndex) end

---@param PolygonGroupIndex int32
function UEditableMesh:MakePolygonGroupID(PolygonGroupIndex) end

---@param PolygonIndex int32
function UEditableMesh:MakePolygonID(PolygonIndex) end

---@param VertexIndex int32
function UEditableMesh:MakeVertexID(VertexIndex) end

---@param VerticesToMove TArray<FVertexToMove>
function UEditableMesh:MoveVertices(VerticesToMove) end

function UEditableMesh:PropagateInstanceChanges() end

---@param OutNewPolygonIDs TArray<FPolygonID>
function UEditableMesh:QuadrangulateMesh(OutNewPolygonIDs) end

function UEditableMesh:RebuildRenderMesh() end

function UEditableMesh:Revert() end

function UEditableMesh:RevertInstance() end

---@param Planes TArray<FPlane>
---@param OutPolygons TArray<FPolygonID>
function UEditableMesh:SearchSpatialDatabaseForPolygonsInVolume(Planes, OutPolygons) end

---@param LineSegmentStart FVector
---@param LineSegmentEnd FVector
---@param OutPolygons TArray<FPolygonID>
function UEditableMesh:SearchSpatialDatabaseForPolygonsPotentiallyIntersectingLineSegment(LineSegmentStart, LineSegmentEnd, OutPolygons) end

---@param InPlane FPlane
---@param OutPolygons TArray<FPolygonID>
function UEditableMesh:SearchSpatialDatabaseForPolygonsPotentiallyIntersectingPlane(InPlane, OutPolygons) end

---@param bInAllowCompact boolean
function UEditableMesh:SetAllowCompact(bInAllowCompact) end

---@param bInAllowSpatialDatabase boolean
function UEditableMesh:SetAllowSpatialDatabase(bInAllowSpatialDatabase) end

---@param bInAllowUndo boolean
function UEditableMesh:SetAllowUndo(bInAllowUndo) end

---@param AttributesForEdges TArray<FAttributesForEdge>
function UEditableMesh:SetEdgesAttributes(AttributesForEdges) end

---@param EdgeIDs TArray<FEdgeID>
---@param EdgesNewCreaseSharpness TArray<float>
function UEditableMesh:SetEdgesCreaseSharpness(EdgeIDs, EdgesNewCreaseSharpness) end

---@param EdgeIDs TArray<FEdgeID>
---@param EdgesNewIsHard TArray<boolean>
function UEditableMesh:SetEdgesHardness(EdgeIDs, EdgesNewIsHard) end

---@param EdgeIDs TArray<FEdgeID>
---@param MaxDotProductForSoftEdge float
function UEditableMesh:SetEdgesHardnessAutomatically(EdgeIDs, MaxDotProductForSoftEdge) end

---@param VertexAttributesForPolygons TArray<FVertexAttributesForPolygon>
function UEditableMesh:SetPolygonsVertexAttributes(VertexAttributesForPolygons) end

---@param NewSubdivisionCount int32
function UEditableMesh:SetSubdivisionCount(NewSubdivisionCount) end

---@param NumTexCoords int32
function UEditableMesh:SetTextureCoordinateCount(NumTexCoords) end

---@param AttributesForVertexInstances TArray<FAttributesForVertexInstance>
function UEditableMesh:SetVertexInstancesAttributes(AttributesForVertexInstances) end

---@param AttributesForVertices TArray<FAttributesForVertex>
function UEditableMesh:SetVerticesAttributes(AttributesForVertices) end

---@param VertexIDs TArray<FVertexID>
---@param VerticesNewCornerSharpness TArray<float>
function UEditableMesh:SetVerticesCornerSharpness(VertexIDs, VerticesNewCornerSharpness) end

---@param EdgeID FEdgeID
---@param Splits TArray<float>
---@param OutNewVertexIDs TArray<FVertexID>
function UEditableMesh:SplitEdge(EdgeID, Splits, OutNewVertexIDs) end

---@param InPlane FPlane
---@param PolygonIDs1 TArray<FPolygonID>
---@param PolygonIDs2 TArray<FPolygonID>
---@param BoundaryIDs TArray<FEdgeID>
function UEditableMesh:SplitPolygonalMesh(InPlane, PolygonIDs1, PolygonIDs2, BoundaryIDs) end

---@param PolygonsToSplit TArray<FPolygonToSplit>
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:SplitPolygons(PolygonsToSplit, OutNewEdgeIDs) end

---@param MeshModificationType EMeshModificationType
---@param MeshTopologyChange EMeshTopologyChange
function UEditableMesh:StartModification(MeshModificationType, MeshTopologyChange) end

---@param PolygonIDs TArray<FPolygonID>
---@param TriangleTessellationMode ETriangleTessellationMode
---@param OutNewPolygonIDs TArray<FPolygonID>
function UEditableMesh:TessellatePolygons(PolygonIDs, TriangleTessellationMode, OutNewPolygonIDs) end

---@param PolygonIDs TArray<FPolygonID>
---@param OutNewTrianglePolygons TArray<FPolygonID>
function UEditableMesh:TriangulatePolygons(PolygonIDs, OutNewTrianglePolygons) end

---@param EdgeID FEdgeID
---@param bOutWasEdgeRemoved boolean
---@param OutNewPolygonID FPolygonID
function UEditableMesh:TryToRemovePolygonEdge(EdgeID, bOutWasEdgeRemoved, OutNewPolygonID) end

---@param VertexID FVertexID
---@param bOutWasVertexRemoved boolean
---@param OutNewEdgeID FEdgeID
function UEditableMesh:TryToRemoveVertex(VertexID, bOutWasVertexRemoved, OutNewEdgeID) end

---@param VertexIDs TArray<FVertexID>
---@param OutNewVertexID FVertexID
function UEditableMesh:WeldVertices(VertexIDs, OutNewVertexID) end

---@param PrimitiveComponent UPrimitiveComponent
---@param LODIndex int32
function UEditableMeshFactory:MakeEditableMesh(PrimitiveComponent, LODIndex) end
