---@meta

---@class AGodParticleSphere_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Billboard UBillboardComponent
---@field Sphere USphereComponent
---@field SmallFX UUFB_CustomBoundsComp
---@field LargeFX UUFB_CustomBoundsComp
---@field Scene USceneComponent
---@field Timeline_0_Hide_D5A9D45C4A391216A168C09D82F7C9AF float
---@field Timeline_0__Direction_D5A9D45C4A391216A168C09D82F7C9AF ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field ParticleFalloff float
---@field ParticleCountMult float
---@field BigParticleMult float
---@field SmallParticleMult float
---@field BigParticleSize float
---@field SmallParticleSize float
---@field BonusVel FVector
---@field BigParticle_LifetimeMult float
---@field SmallParticle_LifetimeMult float
---@field ['Starts Hidden'] boolean
local AGodParticleSphere_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AGodParticleSphere_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Target UInstancedStaticMeshComponent
function AGodParticleSphere_C:AddInst(Target) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AGodParticleSphere_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AGodParticleSphere_C:ExecuteUbergraph_GodParticleSphere(EntryPoint) end

function AGodParticleSphere_C:ReceiveBeginPlay() end

function AGodParticleSphere_C:Timeline_0__FinishedFunc() end

function AGodParticleSphere_C:Timeline_0__UpdateFunc() end

function AGodParticleSphere_C:UserConstructionScript() end
