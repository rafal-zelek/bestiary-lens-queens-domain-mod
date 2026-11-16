---@meta

---@class UEnemyStatusZone_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BossHealthBar UBossHealthBar_C
---@field EnemyHealthBar_base UEnemyHealthBar_base_C
---@field TrackedBosses TSet<AEnemyBase_C>
local UEnemyStatusZone_C = {}

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
function UEnemyStatusZone_C:ActivateBossHealthbar(Enemy, Group) end

function UEnemyStatusZone_C:Construct() end

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
function UEnemyStatusZone_C:DeactivateBossHealthBar(Enemy, Group) end

---@param EntryPoint int32
function UEnemyStatusZone_C:ExecuteUbergraph_EnemyStatusZone(EntryPoint) end
