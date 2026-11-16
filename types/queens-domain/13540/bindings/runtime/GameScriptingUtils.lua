---@meta

---@class UGameScriptingUtils_C : UBlueprintFunctionLibrary
local UGameScriptingUtils_C = {}

---@param Damage float
---@param AggroSize EFS_AttackAggroNoise
---@param Resource_Amount float
---@param Tags FGameplayTagContainer
---@param Data_Tags TMap<FGameplayTag, float>
---@param Additional_Data TSet<UPrimaryDataAsset>
---@param OverrideGUID FGuid
---@param StaggerDamage float
---@param __WorldContext UObject
---@param Output FFB_DamageAttributeSet
function UGameScriptingUtils_C:MakePlayerFB_DamageAttributeSet(Damage, AggroSize, Resource_Amount, Tags, Data_Tags, Additional_Data, OverrideGUID, StaggerDamage, __WorldContext, Output) end

---@param Damage float
---@param MaxDamageForResourceGen float
---@param AggroSize EFS_AttackAggroNoise
---@param Resource_Amount float
---@param Tags FGameplayTagContainer
---@param Data_Tags TMap<FGameplayTag, float>
---@param Additional_Data TSet<UPrimaryDataAsset>
---@param OverrideGUID FGuid
---@param __WorldContext UObject
---@param Output FFB_DamageAttributeSet
function UGameScriptingUtils_C:MakePlayerFB_DamageAttributeSet_Impure(Damage, MaxDamageForResourceGen, AggroSize, Resource_Amount, Tags, Data_Tags, Additional_Data, OverrideGUID, __WorldContext, Output) end

---@param Damage float
---@param AggroSize EFS_AttackAggroNoise
---@param Resource_Amount float
---@param Tags FGameplayTagContainer
---@param Additional_Data TSet<UPrimaryDataAsset>
---@param OverrideGUID FGuid
---@param ChargeAmount float
---@param StaggerDamage float
---@param __WorldContext UObject
---@param Output FFB_DamageAttributeSet
function UGameScriptingUtils_C:MakePlayerFB_DamageAttributeSet_Simple(Damage, AggroSize, Resource_Amount, Tags, Additional_Data, OverrideGUID, ChargeAmount, StaggerDamage, __WorldContext, Output) end

---@param Item TSoftObjectPtr<UFS_ItemData_C>
---@param __WorldContext UObject
---@param Ref TSoftObjectPtr<UFS_ItemData_C>
function UGameScriptingUtils_C:SoftItemRef(Item, __WorldContext, Ref) end

---@param Item TSoftObjectPtr<UFS_ItemData_C>
---@param __WorldContext UObject
---@param Ref UFS_ItemData_C
UGameScriptingUtils_C['Item Ref'] = function(self, Item, __WorldContext, Ref) end
