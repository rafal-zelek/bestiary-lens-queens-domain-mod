---@meta

---@class UBossHealthBar_C : UUserWidget
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
---@field Targets TArray<AEnemyBase_C>
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
---@field CurrentGroup UEnemyData_C
local UBossHealthBar_C = {}

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
function UBossHealthBar_C:AddTarget(Enemy, Group) end

---@param NewCurrent float
---@param newMax float
function UBossHealthBar_C:CalculateHPValues(NewCurrent, newMax) end

---@param Group UEnemyData_C
---@param Enemy ACharacter
function UBossHealthBar_C:CheckAndSetGroup(Group, Enemy) end

function UBossHealthBar_C:Construct() end

---@param NewHP float
function UBossHealthBar_C:Damaged(NewHP) end

---@param Group UEnemyData_C
---@param Enemy AEnemyBase_C
function UBossHealthBar_C:Deactivate(Group, Enemy) end

---@param SegmentThatFinished UEnemyHealthbar_DamagedSegment_C
function UBossHealthBar_C:Done(SegmentThatFinished) end

---@param EntryPoint int32
function UBossHealthBar_C:ExecuteUbergraph_BossHealthBar(EntryPoint) end

function UBossHealthBar_C:FadeIn() end

function UBossHealthBar_C:FadeOut() end

---@param IsDesignTime boolean
function UBossHealthBar_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UBossHealthBar_C:Tick(MyGeometry, InDeltaTime) end

---@param Enemy AEnemyBase_C
---@param Damage float
---@param Tags FGameplayTagContainer
---@param DataTags TMap<FGameplayTag, float>
UBossHealthBar_C['Took Damage'] = function(self, Enemy, Damage, Tags, DataTags) end
