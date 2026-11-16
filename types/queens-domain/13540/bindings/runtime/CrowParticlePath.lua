---@meta

---@class ACrowParticlePath_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field Spline USplineComponent
---@field DefaultSceneRoot USceneComponent
---@field FogAlpha UENVControlData_C
---@field FogBeta UENVControlData_C
---@field Speed float
---@field Pos float
local ACrowParticlePath_C = {}

---@param EntryPoint int32
function ACrowParticlePath_C:ExecuteUbergraph_CrowParticlePath(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ACrowParticlePath_C:GetCurrentFogDAs(Alpha, Beta) end

function ACrowParticlePath_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ACrowParticlePath_C:ReceiveTick(DeltaSeconds) end

---@param DA UENVControlData_C
function ACrowParticlePath_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ACrowParticlePath_C:SetBetaFogDA(DA) end

function ACrowParticlePath_C:UpdateFogDAValues() end

function ACrowParticlePath_C:UserConstructionScript() end
