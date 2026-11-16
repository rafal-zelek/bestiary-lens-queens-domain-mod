---@meta

---@class AVineshroom_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AVineshroom_Projectile_BP_C = {}

---@param EntryPoint int32
function AVineshroom_Projectile_BP_C:ExecuteUbergraph_Vineshroom_Projectile_BP(EntryPoint) end

function AVineshroom_Projectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AVineshroom_Projectile_BP_C:ReceiveTick(DeltaSeconds) end
