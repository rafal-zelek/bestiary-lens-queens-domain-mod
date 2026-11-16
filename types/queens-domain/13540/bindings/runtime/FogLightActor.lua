---@meta

---@class AFogLightActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sphere USphereComponent
---@field Billboard UBillboardComponent
---@field FogLightComponent UFogLightComponent_C
---@field ['Light Exponent'] float
---@field Opacity float
---@field ['Invert Fog Mask'] boolean
---@field ['Max Draw Dist'] float
---@field DisableOnActivate boolean
local AFogLightActor_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AFogLightActor_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AFogLightActor_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AFogLightActor_C:ExecuteUbergraph_FogLightActor(EntryPoint) end

function AFogLightActor_C:ReceiveBeginPlay() end

function AFogLightActor_C:UserConstructionScript() end
