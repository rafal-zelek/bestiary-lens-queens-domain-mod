---@meta

---@class UDaggerChargeHUDEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StickyOn UWidgetAnimation
---@field PopFlash UWidgetAnimation
---@field Icon UImage
---@field IconImage UTexture
---@field Color FLinearColor
---@field Special boolean
---@field PopFlashImage UTexture
---@field StickY boolean
---@field Index int32
---@field StickyInternal boolean
local UDaggerChargeHUDEntry_C = {}

function UDaggerChargeHUDEntry_C:Construct() end

---@param EntryPoint int32
function UDaggerChargeHUDEntry_C:ExecuteUbergraph_DaggerChargeHUDEntry(EntryPoint) end

---@param IsDesignTime boolean
function UDaggerChargeHUDEntry_C:PreConstruct(IsDesignTime) end

---@param Active boolean
---@param Progress float
function UDaggerChargeHUDEntry_C:SetState(Active, Progress) end
