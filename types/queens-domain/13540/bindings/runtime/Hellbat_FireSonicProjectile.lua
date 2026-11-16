---@meta

---@class UHellbat_FireSonicProjectile_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox USphereComponent
---@field BatContext AHellbat_BP_C
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
local UHellbat_FireSonicProjectile_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UHellbat_FireSonicProjectile_C:CancelAction(Reason) end

---@param EntryPoint int32
function UHellbat_FireSonicProjectile_C:ExecuteUbergraph_Hellbat_FireSonicProjectile(EntryPoint) end

---@param Context AFS_EnemyCharacterBase
function UHellbat_FireSonicProjectile_C:InitAction_BP(Context) end

---@param NotifyName FName
function UHellbat_FireSonicProjectile_C:OnBlendOut_55E20CB3497414AD1E8F99BD1BA4E535(NotifyName) end

---@param NotifyName FName
function UHellbat_FireSonicProjectile_C:OnCompleted_55E20CB3497414AD1E8F99BD1BA4E535(NotifyName) end

---@param NotifyName FName
function UHellbat_FireSonicProjectile_C:OnInterrupted_55E20CB3497414AD1E8F99BD1BA4E535(NotifyName) end

---@param NotifyName FName
function UHellbat_FireSonicProjectile_C:OnNotifyBegin_55E20CB3497414AD1E8F99BD1BA4E535(NotifyName) end

---@param NotifyName FName
function UHellbat_FireSonicProjectile_C:OnNotifyEnd_55E20CB3497414AD1E8F99BD1BA4E535(NotifyName) end

function UHellbat_FireSonicProjectile_C:RunAction_BP() end

function UHellbat_FireSonicProjectile_C:StopBehaviour() end

UHellbat_FireSonicProjectile_C['Update Target location'] = function(self) end
