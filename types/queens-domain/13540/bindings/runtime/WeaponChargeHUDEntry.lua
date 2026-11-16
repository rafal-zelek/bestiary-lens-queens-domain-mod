---@meta

---@class UWeaponChargeHUDEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PopFlash UWidgetAnimation
---@field Icon UImage
---@field Spark UImage
---@field FillColor FLinearColor
---@field Brush FSlateBrush
local UWeaponChargeHUDEntry_C = {}

function UWeaponChargeHUDEntry_C:Construct() end

---@param EntryPoint int32
function UWeaponChargeHUDEntry_C:ExecuteUbergraph_WeaponChargeHUDEntry(EntryPoint) end

---@param IsDesignTime boolean
function UWeaponChargeHUDEntry_C:PreConstruct(IsDesignTime) end

function UWeaponChargeHUDEntry_C:RefreshFillColor() end

---@param Active boolean
---@param Progress float
function UWeaponChargeHUDEntry_C:SetState(Active, Progress) end
