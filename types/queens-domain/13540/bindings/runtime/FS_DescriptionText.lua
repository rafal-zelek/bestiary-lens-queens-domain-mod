---@meta

---@class UFS_DescriptionText_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MainTextBlock URichTextBlock
---@field Justification ETextJustify::Type
local UFS_DescriptionText_C = {}

function UFS_DescriptionText_C:ClearText() end

function UFS_DescriptionText_C:Construct() end

---@param EntryPoint int32
function UFS_DescriptionText_C:ExecuteUbergraph_FS_DescriptionText(EntryPoint) end

---@param IsDesignTime boolean
function UFS_DescriptionText_C:PreConstruct(IsDesignTime) end

---@param Item TSoftObjectPtr<UFS_ItemData_C>
function UFS_DescriptionText_C:SetTextFromItem(Item) end

---@param Item FText
function UFS_DescriptionText_C:SetTextRaw(Item) end

function UFS_DescriptionText_C:UpdateFontStyle() end
