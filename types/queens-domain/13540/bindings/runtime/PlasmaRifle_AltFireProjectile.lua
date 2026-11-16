---@meta

---@class APlasmaRifle_AltFireProjectile_C : ASlashGun_Projectile_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RotatingMovement URotatingMovementComponent
---@field ['Player Config'] UPlayerBalance_C
---@field WeaponData UFS_WeaponStats
local APlasmaRifle_AltFireProjectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function APlasmaRifle_AltFireProjectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param EntryPoint int32
function APlasmaRifle_AltFireProjectile_C:ExecuteUbergraph_PlasmaRifle_AltFireProjectile(EntryPoint) end

function APlasmaRifle_AltFireProjectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function APlasmaRifle_AltFireProjectile_C:ReceiveTick(DeltaSeconds) end

APlasmaRifle_AltFireProjectile_C['Pre-Destruction'] = function(self) end
