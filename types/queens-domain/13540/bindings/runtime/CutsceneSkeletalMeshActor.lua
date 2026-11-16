---@meta

---@class ACutsceneSkeletalMeshActor_C : ASkeletalMeshActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AlphaDA UENVControlData_C
---@field BetaDA UENVControlData_C
local ACutsceneSkeletalMeshActor_C = {}

---@param EntryPoint int32
function ACutsceneSkeletalMeshActor_C:ExecuteUbergraph_CutsceneSkeletalMeshActor(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ACutsceneSkeletalMeshActor_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function ACutsceneSkeletalMeshActor_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ACutsceneSkeletalMeshActor_C:SetBetaFogDA(DA) end

function ACutsceneSkeletalMeshActor_C:UpdateFogDAValues() end

function ACutsceneSkeletalMeshActor_C:UserConstructionScript() end
