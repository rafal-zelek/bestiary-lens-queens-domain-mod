---@meta

---@class UItemDescriptionGetter_C : UBlueprintFunctionLibrary
local UItemDescriptionGetter_C = {}

---@param Item TSoftObjectPtr<UFS_ItemData_C>
---@param __WorldContext UObject
---@param Description FText
function UItemDescriptionGetter_C:GetItemDescription(Item, __WorldContext, Description) end
