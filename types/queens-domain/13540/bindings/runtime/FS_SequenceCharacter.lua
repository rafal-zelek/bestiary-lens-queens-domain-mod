---@meta

---@class AFS_SequenceCharacter_C : ASkeletalMeshActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Fog A'] UENVControlData_C
---@field ['Fog B'] UENVControlData_C
---@field FogSwap float
---@field DisableFogTick boolean
---@field ['rand start time'] boolean
local AFS_SequenceCharacter_C = {}

---@param EntryPoint int32
function AFS_SequenceCharacter_C:ExecuteUbergraph_FS_SequenceCharacter(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AFS_SequenceCharacter_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DeltaSeconds float
function AFS_SequenceCharacter_C:ReceiveTick(DeltaSeconds) end

---@param DA UENVControlData_C
function AFS_SequenceCharacter_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AFS_SequenceCharacter_C:SetBetaFogDA(DA) end

function AFS_SequenceCharacter_C:SetInitialTime() end

function AFS_SequenceCharacter_C:UpdateFogDAValues() end

function AFS_SequenceCharacter_C:UserConstructionScript() end
