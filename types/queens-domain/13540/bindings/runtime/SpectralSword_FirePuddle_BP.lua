---@meta

---@class ASpectralSword_FirePuddle_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field Scene USceneComponent
---@field Niagara UNiagaraComponent
local ASpectralSword_FirePuddle_BP_C = {}

function ASpectralSword_FirePuddle_BP_C:Deactivate() end

---@param EntryPoint int32
function ASpectralSword_FirePuddle_BP_C:ExecuteUbergraph_SpectralSword_FirePuddle_BP(EntryPoint) end

function ASpectralSword_FirePuddle_BP_C:ReceiveBeginPlay() end
