---@meta

---@class AAmbientDustFX_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sphere USphereComponent
---@field InstancedStaticMesh UInstancedStaticMeshComponent
---@field CountScaler float
---@field Fog UENVControlData_C
---@field Color1 FLinearColor
---@field Color2 FLinearColor
local AAmbientDustFX_C = {}

---@param EntryPoint int32
function AAmbientDustFX_C:ExecuteUbergraph_AmbientDustFX(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AAmbientDustFX_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function AAmbientDustFX_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AAmbientDustFX_C:SetBetaFogDA(DA) end

function AAmbientDustFX_C:UpdateFogDAValues() end

function AAmbientDustFX_C:UserConstructionScript() end
