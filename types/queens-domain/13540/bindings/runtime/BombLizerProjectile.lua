---@meta

---@class ABombLizerProjectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LizerBomb_Explosion UAudioComponent
---@field ExplodeTimer float
---@field Radius float
local ABombLizerProjectile_C = {}

---@param Target AActor
---@param Hit FHitResult
function ABombLizerProjectile_C:ApplyHit(Target, Hit) end

---@param EntryPoint int32
function ABombLizerProjectile_C:ExecuteUbergraph_BombLizerProjectile(EntryPoint) end

function ABombLizerProjectile_C:ReceiveBeginPlay() end
