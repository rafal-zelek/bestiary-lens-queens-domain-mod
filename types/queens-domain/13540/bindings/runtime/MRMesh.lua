---@meta

---@class FMRMeshConfiguration
local FMRMeshConfiguration = {}

---@class UMRMeshComponent : UPrimitiveComponent
---@field Material UMaterialInterface
---@field WireframeMaterial UMaterialInterface
---@field bCreateMeshProxySections boolean
---@field bUpdateNavMeshOnMeshUpdate boolean
---@field bNeverCreateCollisionMesh boolean
---@field CachedBodySetup UBodySetup
---@field BodySetups TArray<UBodySetup>
local UMRMeshComponent = {}

---@class UMeshReconstructorBase : UObject
local UMeshReconstructorBase = {}

---@class UMockDataMeshTrackerComponent : USceneComponent
---@field OnMeshTrackerUpdated FMockDataMeshTrackerComponentOnMeshTrackerUpdated
---@field ScanWorld boolean
---@field RequestNormals boolean
---@field RequestVertexConfidence boolean
---@field VertexColorMode EMeshTrackerVertexColorMode
---@field BlockVertexColors TArray<FColor>
---@field VertexColorFromConfidenceZero FLinearColor
---@field VertexColorFromConfidenceOne FLinearColor
---@field UpdateInterval float
---@field MRMesh UMRMeshComponent
local UMockDataMeshTrackerComponent = {}

function UMRMeshComponent:Clear() end

function UMRMeshComponent:ForceNavMeshUpdate() end

function UMRMeshComponent:GetEnableMeshOcclusion() end

function UMRMeshComponent:GetUseWireframe() end

function UMRMeshComponent:GetWireframeColor() end

function UMRMeshComponent:IsConnected() end

---@param bEnable boolean
function UMRMeshComponent:SetEnableMeshOcclusion(bEnable) end

---@param bUseWireframe boolean
function UMRMeshComponent:SetUseWireframe(bUseWireframe) end

---@param InColor FLinearColor
function UMRMeshComponent:SetWireframeColor(InColor) end

---@param InMaterial UMaterialInterface
function UMRMeshComponent:SetWireframeMaterial(InMaterial) end

---@param Mesh UMRMeshComponent
function UMeshReconstructorBase:ConnectMRMesh(Mesh) end

function UMeshReconstructorBase:DisconnectMRMesh() end

function UMeshReconstructorBase:IsReconstructionPaused() end

function UMeshReconstructorBase:IsReconstructionStarted() end

function UMeshReconstructorBase:PauseReconstruction() end

function UMeshReconstructorBase:StartReconstruction() end

function UMeshReconstructorBase:StopReconstruction() end

---@param InMRMeshPtr UMRMeshComponent
function UMockDataMeshTrackerComponent:ConnectMRMesh(InMRMeshPtr) end

---@param InMRMeshPtr UMRMeshComponent
function UMockDataMeshTrackerComponent:DisconnectMRMesh(InMRMeshPtr) end

---@param Index int32
---@param Vertices TArray<FVector>
---@param Triangles TArray<int32>
---@param Normals TArray<FVector>
---@param Confidence TArray<float>
function UMockDataMeshTrackerComponent:OnMockDataMeshTrackerUpdated__DelegateSignature(Index, Vertices, Triangles, Normals, Confidence) end
