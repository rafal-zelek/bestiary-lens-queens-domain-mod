---@meta

---@class AUnstableCeilingFXSpawner_C : ACeilingDustSpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Fog UENVControlData_C
local AUnstableCeilingFXSpawner_C = {}

---@param EntryPoint int32
function AUnstableCeilingFXSpawner_C:ExecuteUbergraph_UnstableCeilingFXSpawner(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AUnstableCeilingFXSpawner_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function AUnstableCeilingFXSpawner_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AUnstableCeilingFXSpawner_C:SetBetaFogDA(DA) end

function AUnstableCeilingFXSpawner_C:SpawnFX() end

function AUnstableCeilingFXSpawner_C:UpdateFogDAValues() end
