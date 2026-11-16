---@meta

---@class UHellbat_HornSlam_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox USphereComponent
---@field BatContext AHellbat_BP_C
---@field ReadyToEnd boolean
---@field Mounted boolean
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
local UHellbat_HornSlam_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UHellbat_HornSlam_C:CancelAction(Reason) end

---@param EntryPoint int32
function UHellbat_HornSlam_C:ExecuteUbergraph_Hellbat_HornSlam(EntryPoint) end

---@param Context AFS_EnemyCharacterBase
function UHellbat_HornSlam_C:InitAction_BP(Context) end

---@param NotifyName FName
function UHellbat_HornSlam_C:OnBlendOut_55E20CB3497414AD1E8F99BDCFC2172C(NotifyName) end

---@param NotifyName FName
function UHellbat_HornSlam_C:OnCompleted_55E20CB3497414AD1E8F99BDCFC2172C(NotifyName) end

---@param NotifyName FName
function UHellbat_HornSlam_C:OnInterrupted_55E20CB3497414AD1E8F99BDCFC2172C(NotifyName) end

---@param NotifyName FName
function UHellbat_HornSlam_C:OnNotifyBegin_55E20CB3497414AD1E8F99BDCFC2172C(NotifyName) end

---@param NotifyName FName
function UHellbat_HornSlam_C:OnNotifyEnd_55E20CB3497414AD1E8F99BDCFC2172C(NotifyName) end

function UHellbat_HornSlam_C:RunAction_BP() end

function UHellbat_HornSlam_C:StopBehaviour() end

UHellbat_HornSlam_C['Fire Projectile At Player'] = function(self) end

UHellbat_HornSlam_C['Update Target location'] = function(self) end
