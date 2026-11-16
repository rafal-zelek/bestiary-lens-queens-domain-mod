---@meta

---@class AGarglerDecoy_00_C : ASkeletalMeshActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field CurrentFogAlphaDA UENVControlData_C
local AGarglerDecoy_00_C = {}

---@param EntryPoint int32
function AGarglerDecoy_00_C:ExecuteUbergraph_GarglerDecoy_00(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AGarglerDecoy_00_C:GetCurrentFogDAs(Alpha, Beta) end

function AGarglerDecoy_00_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function AGarglerDecoy_00_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AGarglerDecoy_00_C:SetBetaFogDA(DA) end

function AGarglerDecoy_00_C:UpdateFogDAValues() end

function AGarglerDecoy_00_C:UserConstructionScript() end
