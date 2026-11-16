---@meta

---@class AFS_StaticMeshActor_C : AFB_StaticMeshActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CullDistance float
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field DisableFogVertexColor boolean
---@field MeshArray TArray<USceneComponent>
local AFS_StaticMeshActor_C = {}

---@param EntryPoint int32
function AFS_StaticMeshActor_C:ExecuteUbergraph_FS_StaticMeshActor(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AFS_StaticMeshActor_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function AFS_StaticMeshActor_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AFS_StaticMeshActor_C:SetBetaFogDA(DA) end

function AFS_StaticMeshActor_C:UpdateFogDAValues() end

function AFS_StaticMeshActor_C:UserConstructionScript() end
