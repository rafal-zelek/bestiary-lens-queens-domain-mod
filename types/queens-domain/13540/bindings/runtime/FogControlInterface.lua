---@meta

---@class IFogControlInterface_C : IInterface
local IFogControlInterface_C = {}

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function IFogControlInterface_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function IFogControlInterface_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function IFogControlInterface_C:SetBetaFogDA(DA) end

function IFogControlInterface_C:UpdateFogDAValues() end
