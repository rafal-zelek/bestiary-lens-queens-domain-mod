---@meta

---@class UEnemyHealthBar_base_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Fade UWidgetAnimation
---@field BG UBorder
---@field DamagedSegments UOverlay
---@field EnemyHealthbar_DamagedSegment UEnemyHealthbar_DamagedSegment_C
---@field EnemyName UCommonTextBlock
---@field EnemyNameCOntainer UBorder
---@field Fill UImage
---@field HealthBar UCanvasPanel
---@field SizeBox_0 USizeBox
---@field MaxHP float
---@field CurrentHP float
---@field Enemy ACharacter
---@field CurrentlyRunningDamageSegments TArray<UEnemyHealthbar_DamagedSegment_C>
---@field DisappearTimer float
---@field FadedOut boolean
---@field FadeOutTime float
---@field ['BG Brush'] FSlateBrush
---@field ['In Size'] FVector2D
---@field ['Width Override'] float
---@field ManualFadesOnly boolean
---@field NameOffset float
---@field BarPadding FMargin
---@field Material UMaterialInterface
---@field DamageSegmentMat UMaterialInterface
local UEnemyHealthBar_base_C = {}

function UEnemyHealthBar_base_C:Construct() end

---@param NewHP float
---@param Dead boolean
function UEnemyHealthBar_base_C:Damaged(NewHP, Dead) end

---@param SegmentThatFinished UEnemyHealthbar_DamagedSegment_C
function UEnemyHealthBar_base_C:Done(SegmentThatFinished) end

---@param Damage float
---@param Enemy ACharacter
---@param Tags FGameplayTagContainer
---@param Data_Tags TMap<FGameplayTag, float>
---@param AdditionalData TSet<UPrimaryDataAsset>
---@param SourceGUID FGuid
function UEnemyHealthBar_base_C:EnemyWasDamaged(Damage, Enemy, Tags, Data_Tags, AdditionalData, SourceGUID) end

---@param EntryPoint int32
function UEnemyHealthBar_base_C:ExecuteUbergraph_EnemyHealthBar_base(EntryPoint) end

function UEnemyHealthBar_base_C:FadeIn() end

function UEnemyHealthBar_base_C:FadeOut() end

---@param IsDesignTime boolean
function UEnemyHealthBar_base_C:PreConstruct(IsDesignTime) end

---@param Enemy ACharacter
---@param Damage float
function UEnemyHealthBar_base_C:SetTarget(Enemy, Damage) end

function UEnemyHealthBar_base_C:TargetRemovedViaDeath() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UEnemyHealthBar_base_C:Tick(MyGeometry, InDeltaTime) end

---@param DT float
function UEnemyHealthBar_base_C:UpdateDisappearTimer(DT) end
