---@meta

---@class AWaterDrips_Inst_Actor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Water_Amb_Drops UAudioComponent
---@field Billboard UBillboardComponent
---@field InstancedStaticMesh UInstancedStaticMeshComponent
---@field DropCount int32
---@field FallDistance float
---@field ParticleScale float
---@field ParticleOpacity float
---@field AlphaFog UENVControlData_C
local AWaterDrips_Inst_Actor_C = {}

---@param EntryPoint int32
function AWaterDrips_Inst_Actor_C:ExecuteUbergraph_WaterDrips_Inst_Actor(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AWaterDrips_Inst_Actor_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function AWaterDrips_Inst_Actor_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AWaterDrips_Inst_Actor_C:SetBetaFogDA(DA) end

function AWaterDrips_Inst_Actor_C:SetDropDist() end

function AWaterDrips_Inst_Actor_C:UpdateFogDAValues() end

function AWaterDrips_Inst_Actor_C:UserConstructionScript() end
