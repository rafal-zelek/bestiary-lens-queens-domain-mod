---@meta

---@class ASG_LightPost_00_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SG_Ambience_GlassHum UAudioComponent
---@field StaticMesh9 UStaticMeshComponent
---@field StaticMesh8 UStaticMeshComponent
---@field StaticMesh7 UStaticMeshComponent
---@field StaticMesh6 UStaticMeshComponent
---@field FlakesRoot2 UStaticMeshComponent
---@field StaticMesh4 UStaticMeshComponent
---@field StaticMesh3 UStaticMeshComponent
---@field StaticMesh2 UStaticMeshComponent
---@field StaticMesh1 UStaticMeshComponent
---@field FlakesRoot1 UStaticMeshComponent
---@field GlowSpriteComp UGlowSpriteComp_C
---@field PointLight UPointLightComponent
---@field LightIntensity float
local ASG_LightPost_00_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASG_LightPost_00_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ASG_LightPost_00_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ASG_LightPost_00_BP_C:ExecuteUbergraph_SG_LightPost_00_BP(EntryPoint) end

function ASG_LightPost_00_BP_C:ReceiveBeginPlay() end

function ASG_LightPost_00_BP_C:UserConstructionScript() end
