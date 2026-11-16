---@meta

---@class AJosamiBloodPool_FakeEnemy_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AJosamiBloodPool_FakeEnemy_C = {}

---@param ReceivedHPDamage float
function AJosamiBloodPool_FakeEnemy_C:DamageHP(ReceivedHPDamage) end

function AJosamiBloodPool_FakeEnemy_C:DoExplosion() end

---@param EntryPoint int32
function AJosamiBloodPool_FakeEnemy_C:ExecuteUbergraph_JosamiBloodPool_FakeEnemy(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiBloodPool_FakeEnemy_C:Kill(NoRewards, SupressDeathSound) end

function AJosamiBloodPool_FakeEnemy_C:ReceiveBeginPlay() end

---@param Tags FGameplayTagContainer
function AJosamiBloodPool_FakeEnemy_C:ShouldNotBeTargetedByHoming(Tags) end
