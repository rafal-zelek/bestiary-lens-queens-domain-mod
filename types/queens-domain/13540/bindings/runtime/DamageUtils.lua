---@meta

---@class UDamageUtils_C : UBlueprintFunctionLibrary
local UDamageUtils_C = {}

---@param Damage FFB_DamageAttributeSet
---@param Duration float
---@param __WorldContext UObject
---@param ModdedDamage FFB_DamageAttributeSet
function UDamageUtils_C:ApplyDiseaseToDamage(Damage, Duration, __WorldContext, ModdedDamage) end

---@param Damage FFB_DamageAttributeSet
---@param Duration float
---@param __WorldContext UObject
---@param HeaviedDamage FFB_DamageAttributeSet
function UDamageUtils_C:ApplyHeavyToDamage(Damage, Duration, __WorldContext, HeaviedDamage) end

---@param Damage FFB_DamageAttributeSet
---@param Duration float
---@param __WorldContext UObject
---@param ModdedDamage FFB_DamageAttributeSet
function UDamageUtils_C:ApplyParalysisToDamage(Damage, Duration, __WorldContext, ModdedDamage) end

---@param Damage FFB_DamageAttributeSet
---@param PoisonDamage float
---@param __WorldContext UObject
---@param ModdedDamage FFB_DamageAttributeSet
function UDamageUtils_C:ApplyPoisonToDamage(Damage, PoisonDamage, __WorldContext, ModdedDamage) end

---@param Damage FFB_DamageAttributeSet
---@param Duration float
---@param __WorldContext UObject
---@param ModdedDamage FFB_DamageAttributeSet
function UDamageUtils_C:ApplyWeakenToDamage(Damage, Duration, __WorldContext, ModdedDamage) end

---@param Damage FFB_DamageAttributeSet
---@param Convert_ float
---@param __WorldContext UObject
---@param OutputDamage FFB_DamageAttributeSet
function UDamageUtils_C:ConvertDamageToMagicFire(Damage, Convert_, __WorldContext, OutputDamage) end

---@param Damage FFB_DamageAttributeSet
---@param __To_Convert float
---@param __WorldContext UObject
---@param ModdedDamage FFB_DamageAttributeSet
function UDamageUtils_C:ConvertDamageToPoison(Damage, __To_Convert, __WorldContext, ModdedDamage) end
