---@meta

---@class UStatusCluster_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LowHealthLoop UWidgetAnimation
---@field UltraPop UWidgetAnimation
---@field APGenBonus UCommonTextBlock
---@field APGenMult_1 UCommonTextBlock
---@field BatteryNumberText UCommonTextBlock
---@field ChargeNum UCommonTextBlock
---@field DaggerChargeHUD UDaggerChargeHUD_C
---@field DebugTextOverlay UCanvasPanel
---@field EnemyStagger UCommonTextBlock
---@field EnergyHUD UEnergyHUD_C
---@field Flash UImage
---@field FSChargeHUD UFSChargeHUD_C
---@field HealthNumberText UCommonTextBlock
---@field LastAPGen UCommonTextBlock
---@field LastHitEnemyText UCommonTextBlock
---@field LastResopurceGenPostBonus UCommonTextBlock
---@field LastResourceGen UCommonTextBlock
---@field LastResourceGenBonus UCommonTextBlock
---@field LastUltraGen UCommonTextBlock
---@field LastXPGen UCommonTextBlock
---@field MoveSpeedText UCommonTextBlock
---@field PlayerLifeBar UPlayerLifeBar_C
---@field PowerMeterBG UImage
---@field PowerMeterFill UImage
---@field PowerMeterNumberText UCommonTextBlock
---@field RootElement UImage
---@field UltraGlow UImage
---@field UltraNumberText UCommonTextBlock
---@field UPGenMult UCommonTextBlock
---@field WAPNum UCommonTextBlock
---@field WeaponChargeHUD UWeaponChargeHUD_C
---@field WepXPNum UCommonTextBlock
---@field XPGenMult UCommonTextBlock
---@field PlayerChar AFS_PlayerChar_C
---@field LastHP float
---@field SecretSwordUltraGlowColor FLinearColor
---@field RegularUltraGlowColor FLinearColor
---@field LocalDelta float
local UStatusCluster_C = {}

function UStatusCluster_C:Construct() end

---@param Base float
---@param WAP float
---@param XP float
---@param Ult float
function UStatusCluster_C:CustomEvent_0(Base, WAP, XP, Ult) end

---@param EntryPoint int32
function UStatusCluster_C:ExecuteUbergraph_StatusCluster(EntryPoint) end

---@param PixelOffset float
---@param PercentMax float
function UStatusCluster_C:GetHealthBarAspectRatioTweak(PixelOffset, PercentMax) end

function UStatusCluster_C:LowHealthPulse() end

function UStatusCluster_C:Refresh() end

function UStatusCluster_C:RefreshEnergyUnlock() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UStatusCluster_C:Tick(MyGeometry, InDeltaTime) end

function UStatusCluster_C:UpdateBatteryCharge() end

function UStatusCluster_C:UpdateHPMeter() end

function UStatusCluster_C:UpdateLastHitEnemy() end

function UStatusCluster_C:UpdateLiveDebugHUD() end

function UStatusCluster_C:UpdatePowerMeter() end

function UStatusCluster_C:UpdateUltraMeter() end

function UStatusCluster_C:UpdateWeaponStats() end
