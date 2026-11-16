---@meta

---@class AQueen_FastProjectile_BP_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Queen AQueen_BP_C
---@field MaxHomingTurnRate float
---@field MinHomingTurnRate float
---@field LocalDT float
local AQueen_FastProjectile_BP_C = {}

---@param EntryPoint int32
function AQueen_FastProjectile_BP_C:ExecuteUbergraph_Queen_FastProjectile_BP(EntryPoint) end

---@param DeltaSeconds float
function AQueen_FastProjectile_BP_C:ReceiveTick(DeltaSeconds) end

---@param Hit FHitResult
function AQueen_FastProjectile_BP_C:handleTraceImpact(Hit) end
