---@meta

---@class UEnergyHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BarSize USizeBox
---@field BatterymeterBg UImage
---@field Cap UImage
---@field EnergyHUDPip UEnergyHUDPip_C
---@field EnergyHUDPip_1 UEnergyHUDPip_C
---@field EnergyHUDPip_2 UEnergyHUDPip_C
---@field EnergyHUDPip_3 UEnergyHUDPip_C
---@field PipHolder UHorizontalBox
---@field PlayerRef AFS_PlayerChar_C
---@field ClipSize int32
---@field Pips TArray<UEnergyHUDPip_C>
local UEnergyHUD_C = {}

function UEnergyHUD_C:Error() end

---@param EntryPoint int32
function UEnergyHUD_C:ExecuteUbergraph_EnergyHUD(EntryPoint) end

---@param Has boolean
function UEnergyHUD_C:HasAnyCells(Has) end

function UEnergyHUD_C:Refresh() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UEnergyHUD_C:Tick(MyGeometry, InDeltaTime) end

---@param Cells int32
UEnergyHUD_C['Consume Whole Cells'] = function(self, Cells) end
