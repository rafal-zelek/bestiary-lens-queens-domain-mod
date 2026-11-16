---@meta

---@class UItemDisplay_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Count UCommonTextBlock
---@field EquippedIcon UCommonTextBlock
---@field Icon UImage
---@field ItemName UCommonTextBlock
---@field QuickSelectIcon UImage
---@field ShowCount boolean
---@field Data TSoftObjectPtr<UFS_ItemData_C>
---@field ['Don\'tHideWhenEmpty'] boolean
---@field NotInInventory boolean
---@field HideItemname boolean
---@field ItemIconOverride UTexture2D
---@field OverrideIconSize boolean
---@field IconsSizeOverrideTarget FVector2D
---@field IconsPosOverrideTarget FVector2D
---@field DisplayCountCap int32
---@field ShowNoneAsQuestionMarks boolean
local UItemDisplay_C = {}

function UItemDisplay_C:Construct() end

---@param EntryPoint int32
function UItemDisplay_C:ExecuteUbergraph_ItemDisplay(EntryPoint) end

---@param IsDesignTime boolean
function UItemDisplay_C:PreConstruct(IsDesignTime) end

function UItemDisplay_C:Refresh() end

function UItemDisplay_C:RefreshQS() end

function UItemDisplay_C:UpdateEquippedBadge() end

function UItemDisplay_C:UpdateItemCount() end
