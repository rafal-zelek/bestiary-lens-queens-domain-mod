---@meta

---@class UFS_PlayerHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Rest UWidgetAnimation
---@field IntroHUDAnim UWidgetAnimation
---@field TakeDamage UWidgetAnimation
---@field CompassWidget U3DViewWidget_C
---@field ConsumableHUD UConsumableHUD_C
---@field EnemyStatusZone UEnemyStatusZone_C
---@field GuideGotNotif UGuideGotNotif_C
---@field InteractText UCommonTextBlock
---@field LevelUpAnimation ULevelUpAnimation_C
---@field MagicPoisonMeterHUD UMagicPoisonMeterHUD_C
---@field RetainerBox_0 URetainerBox
---@field Root UCanvasPanel
---@field StatusCluster UStatusCluster_C
---@field StrangeMushroom_HUD UStrangeMushroom_HUD_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field WeaponBrokeAnim ULevelUpAnimation_C
---@field WeaponEvoAnim ULevelUpAnimation_C
---@field WeaponLevelUpAnimation ULevelUpAnimation_C
---@field CharRef AFS_PlayerChar_C
---@field XPReq int32
---@field XPCur int32
---@field LastScale float
---@field RestAnimationPlaying boolean
---@field StartingRestHP float
---@field RestHPInterp float
local UFS_PlayerHUD_C = {}

function UFS_PlayerHUD_C:Construct() end

---@param Old float
---@param New float
function UFS_PlayerHUD_C:CustomEvent_0(Old, New) end

function UFS_PlayerHUD_C:Damaged() end

function UFS_PlayerHUD_C:EquippedGun() end

---@param EntryPoint int32
function UFS_PlayerHUD_C:ExecuteUbergraph_FS_PlayerHUD(EntryPoint) end

function UFS_PlayerHUD_C:Get_HP_Percent_0() end

function UFS_PlayerHUD_C:LevelledUp() end

function UFS_PlayerHUD_C:PlayIntroHUDEnable() end

---@param Guide UEnemyData_C
function UFS_PlayerHUD_C:QueueBestiaryNotif(Guide) end

---@param Guide UReadableText_DataAsset_C
function UFS_PlayerHUD_C:QueueGuideNotif(Guide) end

function UFS_PlayerHUD_C:Refresh() end

function UFS_PlayerHUD_C:RefreshCompassVis() end

function UFS_PlayerHUD_C:RestAnimDone() end

function UFS_PlayerHUD_C:RestedAnim() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UFS_PlayerHUD_C:Tick(MyGeometry, InDeltaTime) end

function UFS_PlayerHUD_C:UnequippedGun() end

function UFS_PlayerHUD_C:UpdateGuides() end

function UFS_PlayerHUD_C:UpdateRestHPInterp() end

---@param Level int32
---@param WeaponItemData UFS_ItemData_C
function UFS_PlayerHUD_C:WeaponLevelledUp(Level, WeaponItemData) end

UFS_PlayerHUD_C['refresh vis'] = function(self) end
