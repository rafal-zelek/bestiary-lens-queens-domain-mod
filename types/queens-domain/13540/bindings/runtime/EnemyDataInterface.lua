---@meta

---@class IEnemyDataInterface_C : IInterface
local IEnemyDataInterface_C = {}

---@param NewParam TSoftObjectPtr<UEnemyData_C>
function IEnemyDataInterface_C:Enemy_BindTookDamage(NewParam) end

---@param Is_A_Boss boolean
---@param Group__optional_ UEnemyData_C
---@param Is_Part_Of_Boss_Encounter boolean
function IEnemyDataInterface_C:Enemy_GetBossInfo(Is_A_Boss, Group__optional_, Is_Part_Of_Boss_Encounter) end

---@param Data TSoftObjectPtr<UEnemyData_C>
function IEnemyDataInterface_C:Enemy_GetEnemyData(Data) end

---@param Current float
---@param Max float
function IEnemyDataInterface_C:Enemy_GetHP(Current, Max) end

---@param Dead boolean
---@param SuspendedDeath boolean
function IEnemyDataInterface_C:Enemy_GetIsDead(Dead, SuspendedDeath) end

---@param Hit FHitResult
---@param HitCannotPierce boolean
function IEnemyDataInterface_C:Enemy_IsNotPiercable(Hit, HitCannotPierce) end

---@param Is boolean
function IEnemyDataInterface_C:Enemy_IsPartOfBossEncounter(Is) end
