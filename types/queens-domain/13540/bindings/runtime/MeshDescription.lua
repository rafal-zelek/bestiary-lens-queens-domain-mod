---@meta

---@class FEdgeID : FElementID
local FEdgeID = {}

---@class FElementID
---@field IDValue int32
local FElementID = {}

---@class FPolygonGroupID : FElementID
local FPolygonGroupID = {}

---@class FPolygonID : FElementID
local FPolygonID = {}

---@class FTriangleID : FElementID
local FTriangleID = {}

---@class FVertexID : FElementID
local FVertexID = {}

---@class FVertexInstanceID : FElementID
local FVertexInstanceID = {}

---@class UDEPRECATED_MeshDescription : UObject
local UDEPRECATED_MeshDescription = {}

---@class UMeshDescriptionBase : UObject
local UMeshDescriptionBase = {}

---@param PolygonID FPolygonID
function UMeshDescriptionBase:ComputePolygonTriangulation(PolygonID) end

---@param VertexID0 FVertexID
---@param VertexID1 FVertexID
function UMeshDescriptionBase:CreateEdge(VertexID0, VertexID1) end

---@param EdgeID FEdgeID
---@param VertexID0 FVertexID
---@param VertexID1 FVertexID
function UMeshDescriptionBase:CreateEdgeWithID(EdgeID, VertexID0, VertexID1) end

---@param PolygonGroupID FPolygonGroupID
---@param VertexInstanceIDs TArray<FVertexInstanceID>
---@param NewEdgeIDs TArray<FEdgeID>
function UMeshDescriptionBase:CreatePolygon(PolygonGroupID, VertexInstanceIDs, NewEdgeIDs) end

function UMeshDescriptionBase:CreatePolygonGroup() end

---@param PolygonGroupID FPolygonGroupID
function UMeshDescriptionBase:CreatePolygonGroupWithID(PolygonGroupID) end

---@param PolygonID FPolygonID
---@param PolygonGroupID FPolygonGroupID
---@param VertexInstanceIDs TArray<FVertexInstanceID>
---@param NewEdgeIDs TArray<FEdgeID>
function UMeshDescriptionBase:CreatePolygonWithID(PolygonID, PolygonGroupID, VertexInstanceIDs, NewEdgeIDs) end

---@param PolygonGroupID FPolygonGroupID
---@param VertexInstanceIDs TArray<FVertexInstanceID>
---@param NewEdgeIDs TArray<FEdgeID>
function UMeshDescriptionBase:CreateTriangle(PolygonGroupID, VertexInstanceIDs, NewEdgeIDs) end

---@param TriangleID FTriangleID
---@param PolygonGroupID FPolygonGroupID
---@param VertexInstanceIDs TArray<FVertexInstanceID>
---@param NewEdgeIDs TArray<FEdgeID>
function UMeshDescriptionBase:CreateTriangleWithID(TriangleID, PolygonGroupID, VertexInstanceIDs, NewEdgeIDs) end

function UMeshDescriptionBase:CreateVertex() end

---@param VertexID FVertexID
function UMeshDescriptionBase:CreateVertexInstance(VertexID) end

---@param VertexInstanceID FVertexInstanceID
---@param VertexID FVertexID
function UMeshDescriptionBase:CreateVertexInstanceWithID(VertexInstanceID, VertexID) end

---@param VertexID FVertexID
function UMeshDescriptionBase:CreateVertexWithID(VertexID) end

---@param EdgeID FEdgeID
---@param OrphanedVertices TArray<FVertexID>
function UMeshDescriptionBase:DeleteEdge(EdgeID, OrphanedVertices) end

---@param PolygonID FPolygonID
---@param OrphanedEdges TArray<FEdgeID>
---@param OrphanedVertexInstances TArray<FVertexInstanceID>
---@param OrphanedPolygonGroups TArray<FPolygonGroupID>
function UMeshDescriptionBase:DeletePolygon(PolygonID, OrphanedEdges, OrphanedVertexInstances, OrphanedPolygonGroups) end

---@param PolygonGroupID FPolygonGroupID
function UMeshDescriptionBase:DeletePolygonGroup(PolygonGroupID) end

---@param TriangleID FTriangleID
---@param OrphanedEdges TArray<FEdgeID>
---@param OrphanedVertexInstances TArray<FVertexInstanceID>
---@param OrphanedPolygonGroupsPtr TArray<FPolygonGroupID>
function UMeshDescriptionBase:DeleteTriangle(TriangleID, OrphanedEdges, OrphanedVertexInstances, OrphanedPolygonGroupsPtr) end

---@param VertexID FVertexID
function UMeshDescriptionBase:DeleteVertex(VertexID) end

---@param VertexInstanceID FVertexInstanceID
---@param OrphanedVertices TArray<FVertexID>
function UMeshDescriptionBase:DeleteVertexInstance(VertexInstanceID, OrphanedVertices) end

function UMeshDescriptionBase:Empty() end

---@param EdgeID FEdgeID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UMeshDescriptionBase:GetEdgeConnectedPolygons(EdgeID, OutConnectedPolygonIDs) end

---@param EdgeID FEdgeID
---@param OutConnectedTriangleIDs TArray<FTriangleID>
function UMeshDescriptionBase:GetEdgeConnectedTriangles(EdgeID, OutConnectedTriangleIDs) end

---@param EdgeID FEdgeID
---@param VertexNumber int32
function UMeshDescriptionBase:GetEdgeVertex(EdgeID, VertexNumber) end

---@param EdgeID FEdgeID
---@param OutVertexIDs TArray<FVertexID>
function UMeshDescriptionBase:GetEdgeVertices(EdgeID, OutVertexIDs) end

---@param EdgeID FEdgeID
function UMeshDescriptionBase:GetNumEdgeConnectedPolygons(EdgeID) end

---@param EdgeID FEdgeID
function UMeshDescriptionBase:GetNumEdgeConnectedTriangles(EdgeID) end

---@param PolygonGroupID FPolygonGroupID
function UMeshDescriptionBase:GetNumPolygonGroupPolygons(PolygonGroupID) end

---@param PolygonID FPolygonID
function UMeshDescriptionBase:GetNumPolygonInternalEdges(PolygonID) end

---@param PolygonID FPolygonID
function UMeshDescriptionBase:GetNumPolygonTriangles(PolygonID) end

---@param PolygonID FPolygonID
function UMeshDescriptionBase:GetNumPolygonVertices(PolygonID) end

---@param VertexID FVertexID
function UMeshDescriptionBase:GetNumVertexConnectedEdges(VertexID) end

---@param VertexID FVertexID
function UMeshDescriptionBase:GetNumVertexConnectedPolygons(VertexID) end

---@param VertexID FVertexID
function UMeshDescriptionBase:GetNumVertexConnectedTriangles(VertexID) end

---@param VertexInstanceID FVertexInstanceID
function UMeshDescriptionBase:GetNumVertexInstanceConnectedPolygons(VertexInstanceID) end

---@param VertexInstanceID FVertexInstanceID
function UMeshDescriptionBase:GetNumVertexInstanceConnectedTriangles(VertexInstanceID) end

---@param VertexID FVertexID
function UMeshDescriptionBase:GetNumVertexVertexInstances(VertexID) end

---@param PolygonID FPolygonID
---@param OutPolygonIDs TArray<FPolygonID>
function UMeshDescriptionBase:GetPolygonAdjacentPolygons(PolygonID, OutPolygonIDs) end

---@param PolygonGroupID FPolygonGroupID
---@param OutPolygonIDs TArray<FPolygonID>
function UMeshDescriptionBase:GetPolygonGroupPolygons(PolygonGroupID, OutPolygonIDs) end

---@param PolygonID FPolygonID
---@param OutEdgeIDs TArray<FEdgeID>
function UMeshDescriptionBase:GetPolygonInternalEdges(PolygonID, OutEdgeIDs) end

---@param PolygonID FPolygonID
---@param OutEdgeIDs TArray<FEdgeID>
function UMeshDescriptionBase:GetPolygonPerimeterEdges(PolygonID, OutEdgeIDs) end

---@param PolygonID FPolygonID
function UMeshDescriptionBase:GetPolygonPolygonGroup(PolygonID) end

---@param PolygonID FPolygonID
---@param OutTriangleIDs TArray<FTriangleID>
function UMeshDescriptionBase:GetPolygonTriangles(PolygonID, OutTriangleIDs) end

---@param PolygonID FPolygonID
---@param OutVertexInstanceIDs TArray<FVertexInstanceID>
function UMeshDescriptionBase:GetPolygonVertexInstances(PolygonID, OutVertexInstanceIDs) end

---@param PolygonID FPolygonID
---@param OutVertexIDs TArray<FVertexID>
function UMeshDescriptionBase:GetPolygonVertices(PolygonID, OutVertexIDs) end

---@param TriangleID FTriangleID
---@param OutTriangleIDs TArray<FTriangleID>
function UMeshDescriptionBase:GetTriangleAdjacentTriangles(TriangleID, OutTriangleIDs) end

---@param TriangleID FTriangleID
---@param OutEdgeIDs TArray<FEdgeID>
function UMeshDescriptionBase:GetTriangleEdges(TriangleID, OutEdgeIDs) end

---@param TriangleID FTriangleID
function UMeshDescriptionBase:GetTrianglePolygon(TriangleID) end

---@param TriangleID FTriangleID
function UMeshDescriptionBase:GetTrianglePolygonGroup(TriangleID) end

---@param TriangleID FTriangleID
---@param Index int32
function UMeshDescriptionBase:GetTriangleVertexInstance(TriangleID, Index) end

---@param TriangleID FTriangleID
---@param OutVertexInstanceIDs TArray<FVertexInstanceID>
function UMeshDescriptionBase:GetTriangleVertexInstances(TriangleID, OutVertexInstanceIDs) end

---@param TriangleID FTriangleID
---@param OutVertexIDs TArray<FVertexID>
function UMeshDescriptionBase:GetTriangleVertices(TriangleID, OutVertexIDs) end

---@param VertexID FVertexID
---@param OutAdjacentVertexIDs TArray<FVertexID>
function UMeshDescriptionBase:GetVertexAdjacentVertices(VertexID, OutAdjacentVertexIDs) end

---@param VertexID FVertexID
---@param OutEdgeIDs TArray<FEdgeID>
function UMeshDescriptionBase:GetVertexConnectedEdges(VertexID, OutEdgeIDs) end

---@param VertexID FVertexID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UMeshDescriptionBase:GetVertexConnectedPolygons(VertexID, OutConnectedPolygonIDs) end

---@param VertexID FVertexID
---@param OutConnectedTriangleIDs TArray<FTriangleID>
function UMeshDescriptionBase:GetVertexConnectedTriangles(VertexID, OutConnectedTriangleIDs) end

---@param VertexInstanceID FVertexInstanceID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UMeshDescriptionBase:GetVertexInstanceConnectedPolygons(VertexInstanceID, OutConnectedPolygonIDs) end

---@param VertexInstanceID FVertexInstanceID
---@param OutConnectedTriangleIDs TArray<FTriangleID>
function UMeshDescriptionBase:GetVertexInstanceConnectedTriangles(VertexInstanceID, OutConnectedTriangleIDs) end

---@param PolygonID FPolygonID
---@param VertexID FVertexID
function UMeshDescriptionBase:GetVertexInstanceForPolygonVertex(PolygonID, VertexID) end

---@param TriangleID FTriangleID
---@param VertexID FVertexID
function UMeshDescriptionBase:GetVertexInstanceForTriangleVertex(TriangleID, VertexID) end

---@param VertexInstanceID0 FVertexInstanceID
---@param VertexInstanceID1 FVertexInstanceID
function UMeshDescriptionBase:GetVertexInstancePairEdge(VertexInstanceID0, VertexInstanceID1) end

---@param VertexInstanceID FVertexInstanceID
function UMeshDescriptionBase:GetVertexInstanceVertex(VertexInstanceID) end

---@param VertexID0 FVertexID
---@param VertexID1 FVertexID
function UMeshDescriptionBase:GetVertexPairEdge(VertexID0, VertexID1) end

---@param VertexID FVertexID
function UMeshDescriptionBase:GetVertexPosition(VertexID) end

---@param VertexID FVertexID
---@param OutVertexInstanceIDs TArray<FVertexInstanceID>
function UMeshDescriptionBase:GetVertexVertexInstances(VertexID, OutVertexInstanceIDs) end

---@param EdgeID FEdgeID
function UMeshDescriptionBase:IsEdgeInternal(EdgeID) end

---@param EdgeID FEdgeID
---@param PolygonID FPolygonID
function UMeshDescriptionBase:IsEdgeInternalToPolygon(EdgeID, PolygonID) end

---@param EdgeID FEdgeID
function UMeshDescriptionBase:IsEdgeValid(EdgeID) end

function UMeshDescriptionBase:IsEmpty() end

---@param PolygonGroupID FPolygonGroupID
function UMeshDescriptionBase:IsPolygonGroupValid(PolygonGroupID) end

---@param PolygonID FPolygonID
function UMeshDescriptionBase:IsPolygonValid(PolygonID) end

---@param TriangleID FTriangleID
function UMeshDescriptionBase:IsTrianglePartOfNgon(TriangleID) end

---@param TriangleID FTriangleID
function UMeshDescriptionBase:IsTriangleValid(TriangleID) end

---@param VertexInstanceID FVertexInstanceID
function UMeshDescriptionBase:IsVertexInstanceValid(VertexInstanceID) end

---@param VertexID FVertexID
function UMeshDescriptionBase:IsVertexOrphaned(VertexID) end

---@param VertexID FVertexID
function UMeshDescriptionBase:IsVertexValid(VertexID) end

---@param NumberOfNewEdges int32
function UMeshDescriptionBase:ReserveNewEdges(NumberOfNewEdges) end

---@param NumberOfNewPolygonGroups int32
function UMeshDescriptionBase:ReserveNewPolygonGroups(NumberOfNewPolygonGroups) end

---@param NumberOfNewPolygons int32
function UMeshDescriptionBase:ReserveNewPolygons(NumberOfNewPolygons) end

---@param NumberOfNewTriangles int32
function UMeshDescriptionBase:ReserveNewTriangles(NumberOfNewTriangles) end

---@param NumberOfNewVertexInstances int32
function UMeshDescriptionBase:ReserveNewVertexInstances(NumberOfNewVertexInstances) end

---@param NumberOfNewVertices int32
function UMeshDescriptionBase:ReserveNewVertices(NumberOfNewVertices) end

---@param PolygonID FPolygonID
function UMeshDescriptionBase:ReversePolygonFacing(PolygonID) end

---@param PolygonID FPolygonID
---@param PolygonGroupID FPolygonGroupID
function UMeshDescriptionBase:SetPolygonPolygonGroup(PolygonID, PolygonGroupID) end

---@param PolygonID FPolygonID
---@param PerimeterIndex int32
---@param VertexInstanceID FVertexInstanceID
function UMeshDescriptionBase:SetPolygonVertexInstance(PolygonID, PerimeterIndex, VertexInstanceID) end

---@param VertexID FVertexID
---@param Position FVector
function UMeshDescriptionBase:SetVertexPosition(VertexID, Position) end
