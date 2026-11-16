---@meta

---@class ANeedle_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ForceStop boolean
local ANeedle_Projectile_BP_C = {}

---@param EntryPoint int32
function ANeedle_Projectile_BP_C:ExecuteUbergraph_Needle_Projectile_BP(EntryPoint) end

---@param Hit FHitResult
---@param Applied_Damage FFB_DamageAttributeSet
function ANeedle_Projectile_BP_C:HandleAppliedDamage(Hit, Applied_Damage) end

---@param Hit FHitResult
function ANeedle_Projectile_BP_C:ProjectileStopped(Hit) end
