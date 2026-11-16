---@meta

---@class AThrowingAxe_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Rotation float
local AThrowingAxe_Projectile_BP_C = {}

---@param EntryPoint int32
function AThrowingAxe_Projectile_BP_C:ExecuteUbergraph_ThrowingAxe_Projectile_BP(EntryPoint) end

---@param Hit FHitResult
---@param bPickA boolean
function AThrowingAxe_Projectile_BP_C:InitByHit(Hit, bPickA) end

function AThrowingAxe_Projectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AThrowingAxe_Projectile_BP_C:ReceiveTick(DeltaSeconds) end
