---@meta

---@class AGodParticleSpline_C : AFS_SimpleSpline_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SmallFX UUFB_CustomBoundsComp
---@field LargeFX UUFB_CustomBoundsComp
---@field Timeline_0_Hide_FEF5303443D9AFFBC9CE579402B17E58 float
---@field Timeline_0__Direction_FEF5303443D9AFFBC9CE579402B17E58 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field BigParticleMult float
---@field ParticleCountMult float
---@field SmallParticleMult float
---@field BigParticleSize float
---@field SmallParticleSize float
---@field BigParticle_LifetimeMult float
---@field SmallParticle_LifetimeMult float
---@field ParticleFalloff float
---@field ParticleSpawnRadius float
---@field ParticleTravelSpeed float
---@field ShowSpline boolean
---@field ['Starts Hidden'] boolean
---@field FlipDirection boolean
local AGodParticleSpline_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AGodParticleSpline_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Target UInstancedStaticMeshComponent
function AGodParticleSpline_C:AddInst(Target) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AGodParticleSpline_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AGodParticleSpline_C:ExecuteUbergraph_GodParticleSpline(EntryPoint) end

function AGodParticleSpline_C:ReceiveBeginPlay() end

function AGodParticleSpline_C:Timeline_0__FinishedFunc() end

function AGodParticleSpline_C:Timeline_0__UpdateFunc() end

function AGodParticleSpline_C:UpdateFogDAValues() end

function AGodParticleSpline_C:UserConstructionScript() end
