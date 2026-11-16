---@meta

---@class UDaggerChargeHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BG UImage
---@field ChargeIcons UVerticalBox
---@field CharRef AFS_PlayerChar_C
---@field ChargeComp UDaggerChargeLogic_C
---@field ChargeEntries TArray<UDaggerChargeHUDEntry_C>
---@field IconImage UTexture2D
---@field SpecialDaggerMode boolean
local UDaggerChargeHUD_C = {}

function UDaggerChargeHUD_C:Construct() end

---@param EntryPoint int32
function UDaggerChargeHUD_C:ExecuteUbergraph_DaggerChargeHUD(EntryPoint) end

function UDaggerChargeHUD_C:GetDaggerChargeComp() end

---@param InputPin UFS_ItemData_C
---@param Icon UTexture
---@param DF UTexture
function UDaggerChargeHUD_C:GetIcon(InputPin, Icon, DF) end

---@param IsDesignTime boolean
function UDaggerChargeHUD_C:PreConstruct(IsDesignTime) end

---@param Force boolean
function UDaggerChargeHUD_C:RefreshIconCount(Force) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UDaggerChargeHUD_C:Tick(MyGeometry, InDeltaTime) end
