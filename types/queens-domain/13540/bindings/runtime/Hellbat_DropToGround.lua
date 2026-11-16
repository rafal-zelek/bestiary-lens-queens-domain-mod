---@meta

---@class UHellbat_DropToGround_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox USphereComponent
---@field BatContext AHellbat_BP_C
---@field ReadyToEnd boolean
---@field Mounted boolean
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
local UHellbat_DropToGround_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UHellbat_DropToGround_C:CancelAction(Reason) end

---@param EntryPoint int32
function UHellbat_DropToGround_C:ExecuteUbergraph_Hellbat_DropToGround(EntryPoint) end

---@param Context AFS_EnemyCharacterBase
function UHellbat_DropToGround_C:InitAction_BP(Context) end

---@param NotifyName FName
function UHellbat_DropToGround_C:OnBlendOut_55E20CB3497414AD1E8F99BD7A021284(NotifyName) end

---@param NotifyName FName
function UHellbat_DropToGround_C:OnCompleted_55E20CB3497414AD1E8F99BD7A021284(NotifyName) end

---@param NotifyName FName
function UHellbat_DropToGround_C:OnInterrupted_55E20CB3497414AD1E8F99BD7A021284(NotifyName) end

---@param NotifyName FName
function UHellbat_DropToGround_C:OnNotifyBegin_55E20CB3497414AD1E8F99BD7A021284(NotifyName) end

---@param NotifyName FName
function UHellbat_DropToGround_C:OnNotifyEnd_55E20CB3497414AD1E8F99BD7A021284(NotifyName) end

function UHellbat_DropToGround_C:RunAction_BP() end

function UHellbat_DropToGround_C:StopBehaviour() end

UHellbat_DropToGround_C['Fire Projectile At Player'] = function(self) end

UHellbat_DropToGround_C['Update Target location'] = function(self) end
