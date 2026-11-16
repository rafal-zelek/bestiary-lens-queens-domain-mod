---@meta

---@class UFSChargeHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PopFlash9 UWidgetAnimation
---@field PopFlash8 UWidgetAnimation
---@field PopFlash7 UWidgetAnimation
---@field PopFlash6 UWidgetAnimation
---@field PopFlash5 UWidgetAnimation
---@field PopFlash4 UWidgetAnimation
---@field PopFlash3 UWidgetAnimation
---@field PopFlash2 UWidgetAnimation
---@field PopFlash1 UWidgetAnimation
---@field PopFlash0 UWidgetAnimation
---@field LayoutSizer USizeBox
---@field SingleMatBar UImage
---@field CharRef AFS_PlayerChar_C
---@field ChargeComp UFlyingSwordChargeLogic_C
---@field DaggerChargeMode boolean
---@field IconImage UTexture2D
---@field LastChargeCount int32
---@field SecretSwordFillColor FLinearColor
---@field NormalFlyingSwordFillColor FLinearColor
---@field SecretSwordMode boolean
---@field CurrentMaxChargeCount int32
---@field ActiveStates TArray<boolean>
---@field ActiveParams TArray<FName>
---@field ProgressParams TArray<FName>
---@field AnimsByIndex TArray<UWidgetAnimation>
---@field CursedStates TArray<boolean>
---@field CursedCount int32
local UFSChargeHUD_C = {}

function UFSChargeHUD_C:Construct() end

---@param EntryPoint int32
function UFSChargeHUD_C:ExecuteUbergraph_FSChargeHUD(EntryPoint) end

---@param IsDesignTime boolean
function UFSChargeHUD_C:PreConstruct(IsDesignTime) end

function UFSChargeHUD_C:RefreshIconCount() end

---@param Active boolean
---@param Fill float
---@param Index int32
---@param Mat UMaterialInstanceDynamic
---@param Cursed boolean
function UFSChargeHUD_C:SetChargeState(Active, Fill, Index, Mat, Cursed) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UFSChargeHUD_C:Tick(MyGeometry, InDeltaTime) end

function UFSChargeHUD_C:UpdateAllChargeStates() end

function UFSChargeHUD_C:UpdateSingleImageMat() end
