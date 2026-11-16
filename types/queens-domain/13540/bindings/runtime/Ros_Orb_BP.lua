---@meta

---@class ARos_Orb_BP_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FogLightComponent UFogLightComponent_C
---@field PointLight5 UPointLightComponent
---@field PointLight4 UPointLightComponent
---@field PointLight3 UPointLightComponent
---@field PointLight2 UPointLightComponent
---@field PointLight1 UPointLightComponent
---@field PointLight UPointLightComponent
---@field Gem1_Glow0 UGlowSpriteComp_C
---@field Audio UAudioComponent
local ARos_Orb_BP_C = {}

---@param EntryPoint int32
function ARos_Orb_BP_C:ExecuteUbergraph_Ros_Orb_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ARos_Orb_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ARos_Orb_BP_C:PutAway() end
