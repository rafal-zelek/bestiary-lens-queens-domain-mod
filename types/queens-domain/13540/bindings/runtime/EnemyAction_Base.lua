---@meta

---@class UEnemyAction_Base_C : UFS_EnemyAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyRef AEnemyBase_C
---@field CooldownEndTime float
---@field AttackDataIndex int32
---@field Running boolean
local UEnemyAction_Base_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UEnemyAction_Base_C:CancelAction(Reason) end

---@param EntryPoint int32
function UEnemyAction_Base_C:ExecuteUbergraph_EnemyAction_Base(EntryPoint) end

---@param Config FFS_EnemyAttackConfig
function UEnemyAction_Base_C:GetCurrentAttackConfig(Config) end

---@param Context AFS_EnemyCharacterBase
function UEnemyAction_Base_C:InitAction_BP(Context) end

function UEnemyAction_Base_C:RunAction_BP() end

---@param HitBox USphereComponent
---@param Unblockable boolean
---@param HitboxesByTag boolean
---@param HitboxTag FName
UEnemyAction_Base_C['Activate Melee Hitbox'] = function(self, HitBox, Unblockable, HitboxesByTag, HitboxTag) end

UEnemyAction_Base_C['Deactivate Melee Hitbox'] = function(self) end
