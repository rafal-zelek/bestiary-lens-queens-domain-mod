---@meta

---@class ASG_LightFlower_WK_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh4 UStaticMeshComponent
---@field StaticMesh3 UStaticMeshComponent
---@field StaticMesh2 UStaticMeshComponent
---@field StaticMesh1 UStaticMeshComponent
---@field StaticMesh UStaticMeshComponent
---@field GlowSpriteComp UGlowSpriteComp_C
---@field PointLight UPointLightComponent
---@field LightIntensity float
local ASG_LightFlower_WK_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASG_LightFlower_WK_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ASG_LightFlower_WK_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ASG_LightFlower_WK_BP_C:ExecuteUbergraph_SG_LightFlower_WK_BP(EntryPoint) end

function ASG_LightFlower_WK_BP_C:ReceiveBeginPlay() end

function ASG_LightFlower_WK_BP_C:UserConstructionScript() end
