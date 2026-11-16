---@meta

---@class ASlashGun_AltFireProjectile_C : ASlashGun_Projectile_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Player Config'] UPlayerBalance_C
---@field WeaponData UFS_WeaponStats
local ASlashGun_AltFireProjectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ASlashGun_AltFireProjectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param EntryPoint int32
function ASlashGun_AltFireProjectile_C:ExecuteUbergraph_SlashGun_AltFireProjectile(EntryPoint) end

ASlashGun_AltFireProjectile_C['Pre-Destruction'] = function(self) end
