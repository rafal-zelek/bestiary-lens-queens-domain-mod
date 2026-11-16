---@meta

---@class UHellbat_Ground_Bullrush_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox USphereComponent
---@field BatContext AHellbat_BP_C
---@field ReadyToEnd boolean
---@field Mounted boolean
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
local UHellbat_Ground_Bullrush_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UHellbat_Ground_Bullrush_C:CancelAction(Reason) end

function UHellbat_Ground_Bullrush_C:EndRush() end

---@param EntryPoint int32
function UHellbat_Ground_Bullrush_C:ExecuteUbergraph_Hellbat_Ground_Bullrush(EntryPoint) end

---@param Context AFS_EnemyCharacterBase
function UHellbat_Ground_Bullrush_C:InitAction_BP(Context) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnBlendOut_55E20CB3497414AD1E8F99BD1DE5A878(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnBlendOut_55E20CB3497414AD1E8F99BDE587FAC3(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnCompleted_55E20CB3497414AD1E8F99BD1DE5A878(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnCompleted_55E20CB3497414AD1E8F99BDE587FAC3(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnInterrupted_55E20CB3497414AD1E8F99BD1DE5A878(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnInterrupted_55E20CB3497414AD1E8F99BDE587FAC3(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnNotifyBegin_55E20CB3497414AD1E8F99BD1DE5A878(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnNotifyBegin_55E20CB3497414AD1E8F99BDE587FAC3(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnNotifyEnd_55E20CB3497414AD1E8F99BD1DE5A878(NotifyName) end

---@param NotifyName FName
function UHellbat_Ground_Bullrush_C:OnNotifyEnd_55E20CB3497414AD1E8F99BDE587FAC3(NotifyName) end

function UHellbat_Ground_Bullrush_C:RunAction_BP() end

function UHellbat_Ground_Bullrush_C:StopBehaviour() end

UHellbat_Ground_Bullrush_C['Update Target location'] = function(self) end
