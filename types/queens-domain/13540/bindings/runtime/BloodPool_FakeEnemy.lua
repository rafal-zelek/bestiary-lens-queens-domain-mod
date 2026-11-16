---@meta

---@class ABloodPool_FakeEnemy_C : AEnemyBase_C
local ABloodPool_FakeEnemy_C = {}

---@param ReceivedHPDamage float
function ABloodPool_FakeEnemy_C:DamageHP(ReceivedHPDamage) end

---@param Tags FGameplayTagContainer
function ABloodPool_FakeEnemy_C:ShouldNotBeTargetedByHoming(Tags) end
