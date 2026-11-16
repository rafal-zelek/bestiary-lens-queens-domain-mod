---@meta

---@class ASteamSpray_Inst_Actor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SteamSpray UAudioComponent
---@field Billboard UBillboardComponent
---@field InstancedStaticMesh UInstancedStaticMeshComponent
---@field ParticleCount int32
---@field Force float
---@field ParticleScale float
---@field ParticleOpacity float
---@field AlphaFog UENVControlData_C
local ASteamSpray_Inst_Actor_C = {}

---@param EntryPoint int32
function ASteamSpray_Inst_Actor_C:ExecuteUbergraph_SteamSpray_Inst_Actor(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ASteamSpray_Inst_Actor_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function ASteamSpray_Inst_Actor_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ASteamSpray_Inst_Actor_C:SetBetaFogDA(DA) end

function ASteamSpray_Inst_Actor_C:UpdateFogDAValues() end

function ASteamSpray_Inst_Actor_C:UserConstructionScript() end
