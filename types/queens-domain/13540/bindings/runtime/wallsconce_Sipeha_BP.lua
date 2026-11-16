---@meta

---@class Awallsconce_Sipeha_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BrazierFlame_Mesh_Comp UBrazierFlame_Mesh_Comp_C
---@field Audio UAudioComponent
---@field DamagingCollision UDamagingCollision_C
---@field PointLight UPointLightComponent
local Awallsconce_Sipeha_BP_C = {}

---@param EntryPoint int32
function Awallsconce_Sipeha_BP_C:ExecuteUbergraph_wallsconce_Sipeha_BP(EntryPoint) end

---@param Enabled boolean
function Awallsconce_Sipeha_BP_C:SetState(Enabled) end

function Awallsconce_Sipeha_BP_C:UserConstructionScript() end
