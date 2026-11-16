---@meta

---@class AStrangeStoneBlock_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AStrangeStoneBlock_Projectile_BP_C = {}

---@param EntryPoint int32
function AStrangeStoneBlock_Projectile_BP_C:ExecuteUbergraph_StrangeStoneBlock_Projectile_BP(EntryPoint) end

function AStrangeStoneBlock_Projectile_BP_C:InstantlyDissolve() end

function AStrangeStoneBlock_Projectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AStrangeStoneBlock_Projectile_BP_C:ReceiveTick(DeltaSeconds) end
