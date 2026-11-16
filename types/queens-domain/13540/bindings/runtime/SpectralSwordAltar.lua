---@meta

---@class ASpectralSwordAltar_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EmissionParticles UNiagaraComponent
---@field DefaultSceneRoot USceneComponent
---@field SpectralSword ASpectralSword_Pickup_C
---@field KeyTag FName
---@field ActivationCount int32
---@field MementoReceptacles TArray<AMementoRecepticle_C>
---@field Sequence ALevelSequenceActor
---@field MementoAbsorbParticlesActive boolean
---@field MementoStandardParticlesActive boolean
---@field RiseUpPos float
---@field DissolveMementos float
local ASpectralSwordAltar_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASpectralSwordAltar_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ASpectralSwordAltar_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function ASpectralSwordAltar_C:DoSpectralSwordSpawnAnim() end

---@param EntryPoint int32
function ASpectralSwordAltar_C:ExecuteUbergraph_SpectralSwordAltar(EntryPoint) end

function ASpectralSwordAltar_C:ReceiveBeginPlay() end

function ASpectralSwordAltar_C:SpectralSwordPickedUp() end

function ASpectralSwordAltar_C:UpdateAnimation() end

---@param Receptactle AMementoRecepticle_C
function ASpectralSwordAltar_C:UpdateMementoVisuals(Receptactle) end
