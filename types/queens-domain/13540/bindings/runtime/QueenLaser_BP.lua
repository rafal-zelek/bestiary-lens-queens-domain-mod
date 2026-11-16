---@meta

---@class AQueenLaser_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FX UNiagaraComponent
---@field Damage FFB_DamageAttributeSet
---@field WaveDamage FFB_DamageAttributeSet
---@field WaveSpeed float
---@field GroundHeight float
---@field NoLongerHitting boolean
---@field Audio UAudioComponent
local AQueenLaser_BP_C = {}

function AQueenLaser_BP_C:Deactivate() end

---@param EntryPoint int32
function AQueenLaser_BP_C:ExecuteUbergraph_QueenLaser_BP(EntryPoint) end

function AQueenLaser_BP_C:GetSFXLoc() end

function AQueenLaser_BP_C:Impact() end

function AQueenLaser_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AQueenLaser_BP_C:ReceiveTick(DeltaSeconds) end
