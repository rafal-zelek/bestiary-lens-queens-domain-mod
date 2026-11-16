---@meta

---@class ASpectralSword_FireManager_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpectralSwordFire_Loop_Cue UAudioComponent
---@field DefaultSceneRoot USceneComponent
---@field Puddles TArray<ASpectralSword_FirePuddle_BP_C>
---@field TickRate float
---@field ['Damage To Apply'] FFB_DamageAttributeSet
---@field HitTargets TSet<AActor>
---@field Anywerevalid boolean
---@field Duration float
local ASpectralSword_FireManager_BP_C = {}

---@param EntryPoint int32
function ASpectralSword_FireManager_BP_C:ExecuteUbergraph_SpectralSword_FireManager_BP(EntryPoint) end

function ASpectralSword_FireManager_BP_C:ReceiveBeginPlay() end

function ASpectralSword_FireManager_BP_C:Remove() end

function ASpectralSword_FireManager_BP_C:StartTickloop() end

function ASpectralSword_FireManager_BP_C:TickLoop() end
