---@meta

---@class UCategoryList_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CategoriesList UHorizontalBox
---@field Categories TArray<FCategory>
---@field SelectedIndex int32
---@field CategoryChanged FCategoryList_CCategoryChanged
---@field Buttons TArray<UCategoryEntry_C>
---@field Journal boolean
local UCategoryList_C = {}

---@param Index int32
function UCategoryList_C:CategoryChanged__DelegateSignature(Index) end

---@param Index int32
function UCategoryList_C:CategorySelected(Index) end

function UCategoryList_C:Construct() end

function UCategoryList_C:DecrementCategory() end

---@param EntryPoint int32
function UCategoryList_C:ExecuteUbergraph_CategoryList(EntryPoint) end

function UCategoryList_C:ExternallyChanged() end

function UCategoryList_C:IncrementCategory() end

---@param IsDesignTime boolean
function UCategoryList_C:PreConstruct(IsDesignTime) end

function UCategoryList_C:RefreshButtonInstances() end

function UCategoryList_C:RefreshButtonStates() end
