---@meta

---@class AFishWife_Egg_Item_Bp_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_EggCharm_SM UStaticMeshComponent
---@field GlowSpriteComp UGlowSpriteComp_C
---@field FogLightComponent UFogLightComponent_C
---@field PointLight2 UPointLightComponent
---@field PointLight1 UPointLightComponent
---@field PointLight UPointLightComponent
---@field EggLightVisible boolean
local AFishWife_Egg_Item_Bp_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AFishWife_Egg_Item_Bp_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AFishWife_Egg_Item_Bp_C:ExecuteUbergraph_FishWife_Egg_Item_Bp(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AFishWife_Egg_Item_Bp_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function AFishWife_Egg_Item_Bp_C:HideToWaitForActivation() end

---@param PlayerInteracting AActor
function AFishWife_Egg_Item_Bp_C:Interact(PlayerInteracting) end

---@param AlreadyAcquired boolean
function AFishWife_Egg_Item_Bp_C:SetState(AlreadyAcquired) end

---@param Data TArray<FSavableActorState>
AFishWife_Egg_Item_Bp_C['Restore State From Save Data'] = function(self, Data) end
