---@meta

---@class UWeaponChargeHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PopFlash_6 UWidgetAnimation
---@field PopFlash_5 UWidgetAnimation
---@field PopFlash_4 UWidgetAnimation
---@field PopFlash_3 UWidgetAnimation
---@field PopFlash_2 UWidgetAnimation
---@field PopFlash_1 UWidgetAnimation
---@field ResourcesGenerated UWidgetAnimation
---@field alignmenthelper UImage
---@field Flare_0 UImage
---@field Flare_1 UImage
---@field Flare_2 UImage
---@field Flare_3 UImage
---@field Flare_4 UImage
---@field Flare_5 UImage
---@field FlareContainer UOverlay
---@field WCH UImage
---@field WCHContainer UOverlay
---@field CharRef AFS_PlayerChar_C
---@field ChargeEntries TArray<UWeaponChargeHUDEntry_C>
---@field LastChargeCount int32
---@field Weapon UWeaponScriptBase_C
---@field PopFlash TArray<UWidgetAnimation>
---@field ChargeFillStates TArray<boolean>
---@field LocalDelta float
local UWeaponChargeHUD_C = {}

---@param InputPin int32
function UWeaponChargeHUD_C:ApplyChargeGlowProps(InputPin) end

function UWeaponChargeHUD_C:Construct() end

---@param Changed_Item UFS_ItemData_C
function UWeaponChargeHUD_C:CustomEvent_0(Changed_Item) end

---@param EntryPoint int32
function UWeaponChargeHUD_C:ExecuteUbergraph_WeaponChargeHUD(EntryPoint) end

function UWeaponChargeHUD_C:FullRefresh() end

---@param self2 UFS_WeaponStats
---@param MaxCharges int32
function UWeaponChargeHUD_C:GetGlowMaxChargesFromStats(self2, MaxCharges) end

---@param MaxCharges int32
function UWeaponChargeHUD_C:GetmaxChargeCount(MaxCharges) end

---@param IsDesignTime boolean
function UWeaponChargeHUD_C:PreConstruct(IsDesignTime) end

---@param Index int32
function UWeaponChargeHUD_C:ProcessChargeIndex(Index) end

function UWeaponChargeHUD_C:ResetGlows() end

---@param Multiplier float
---@param Weapon UFS_ItemData_C
---@param GeneratedByConsumignAbilityPoints boolean
function UWeaponChargeHUD_C:ResourcesWereGenerated(Multiplier, Weapon, GeneratedByConsumignAbilityPoints) end

---@param Index int32
function UWeaponChargeHUD_C:ShouldChargeCountAsFilled(Index) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UWeaponChargeHUD_C:Tick(MyGeometry, InDeltaTime) end

---@param NewWeapon UWeaponScriptBase_C
function UWeaponChargeHUD_C:WeaponChanged(NewWeapon) end
