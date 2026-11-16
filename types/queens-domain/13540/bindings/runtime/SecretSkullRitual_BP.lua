---@meta

---@class ASecretSkullRitual_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sphere USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field ActorsToHideInEnd TArray<AActor>
---@field LightsToDim TArray<APointLight>
---@field LightDimMult float
---@field Sky AStaticMeshActor
---@field ActorsToShowInEnd TArray<AActor>
local ASecretSkullRitual_BP_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ASecretSkullRitual_BP_C:BndEvt__SecretSkullRitual_BP_Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

function ASecretSkullRitual_BP_C:CustomEvent_0() end

---@param EntryPoint int32
function ASecretSkullRitual_BP_C:ExecuteUbergraph_SecretSkullRitual_BP(EntryPoint) end

function ASecretSkullRitual_BP_C:ReceiveBeginPlay() end

function ASecretSkullRitual_BP_C:SetTOEndState() end

function ASecretSkullRitual_BP_C:UserConstructionScript() end
