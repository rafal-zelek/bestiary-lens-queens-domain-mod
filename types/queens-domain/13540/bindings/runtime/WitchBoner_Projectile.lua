---@meta

---@class AWitchBoner_Projectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MaxHomingTurnRate float
---@field MinHomingTurnRate float
---@field LocalDT float
---@field OverallHomingPower float
local AWitchBoner_Projectile_C = {}

---@param EntryPoint int32
function AWitchBoner_Projectile_C:ExecuteUbergraph_WitchBoner_Projectile(EntryPoint) end

---@param DeltaSeconds float
function AWitchBoner_Projectile_C:ReceiveTick(DeltaSeconds) end

---@param Hit FHitResult
function AWitchBoner_Projectile_C:handleTraceImpact(Hit) end
