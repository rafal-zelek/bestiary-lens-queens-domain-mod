---@meta

---@class ABrazierStanding_00_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BrazierFlame_Mesh_Comp UBrazierFlame_Mesh_Comp_C
---@field Audio UAudioComponent
---@field DamagingCollision UDamagingCollision_C
---@field PointLight UPointLightComponent
local ABrazierStanding_00_BP_C = {}

---@param EntryPoint int32
function ABrazierStanding_00_BP_C:ExecuteUbergraph_BrazierStanding_00_BP(EntryPoint) end

function ABrazierStanding_00_BP_C:ReceiveBeginPlay() end
