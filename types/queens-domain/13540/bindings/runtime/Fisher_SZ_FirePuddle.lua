---@meta

---@class AFisher_SZ_FirePuddle_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field Box UBoxComponent
---@field Duration float
---@field Finished FFisher_SZ_FirePuddle_CFinished
---@field CreepDamage FFB_DamageAttributeSet
---@field BaseSize FVector
local AFisher_SZ_FirePuddle_C = {}

function AFisher_SZ_FirePuddle_C:Deactivate() end

---@param EntryPoint int32
function AFisher_SZ_FirePuddle_C:ExecuteUbergraph_Fisher_SZ_FirePuddle(EntryPoint) end

---@param Puddle AFisher_SZ_FirePuddle_C
function AFisher_SZ_FirePuddle_C:Finished__DelegateSignature(Puddle) end

function AFisher_SZ_FirePuddle_C:ReceiveBeginPlay() end
