---@meta

---@class UItemMergeAnim_Comp_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RelevantItem TSet<UFS_ItemData_C>
---@field ItemMergeActorClass TSubclassOf<AItemMergeActor_C>
---@field DelaybeforeDoin boolean
local UItemMergeAnim_Comp_C = {}

---@param ItemToFind UFS_ItemData_C
---@param Added boolean
---@param ConditionsPassed boolean
function UItemMergeAnim_Comp_C:CheckConditions(ItemToFind, Added, ConditionsPassed) end

---@param EntryPoint int32
function UItemMergeAnim_Comp_C:ExecuteUbergraph_ItemMergeAnim_Comp(EntryPoint) end

---@param Added boolean
---@param Item UFS_ItemData_C
function UItemMergeAnim_Comp_C:InventoryUpdated(Added, Item) end
