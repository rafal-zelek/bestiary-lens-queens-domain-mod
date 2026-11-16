---@meta

---@class ABoner_TrapDecoy_C : AFS_StationarySkeletalMeshActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field DisableFogVertexColor boolean
---@field ['Cull Distance'] float
---@field HideHead boolean
---@field EnableCollision boolean
---@field PAs TMap<USkeletalMesh, UPhysicsAsset>
local ABoner_TrapDecoy_C = {}

---@param EntryPoint int32
function ABoner_TrapDecoy_C:ExecuteUbergraph_Boner_TrapDecoy(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ABoner_TrapDecoy_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function ABoner_TrapDecoy_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ABoner_TrapDecoy_C:SetBetaFogDA(DA) end

function ABoner_TrapDecoy_C:UpdateFogDAValues() end

function ABoner_TrapDecoy_C:UserConstructionScript() end
