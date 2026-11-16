---@meta

---@class UEnemyHealthbar_DamagedSegment_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Fill UImage
---@field FadeTime float
---@field Start float
---@field End float
---@field StartTime float
---@field Done FEnemyHealthbar_DamagedSegment_CDone
---@field Matbase UMaterialInterface
local UEnemyHealthbar_DamagedSegment_C = {}

function UEnemyHealthbar_DamagedSegment_C:Construct() end

---@param SegmentThatFinished UEnemyHealthbar_DamagedSegment_C
function UEnemyHealthbar_DamagedSegment_C:Done__DelegateSignature(SegmentThatFinished) end

---@param EntryPoint int32
function UEnemyHealthbar_DamagedSegment_C:ExecuteUbergraph_EnemyHealthbar_DamagedSegment(EntryPoint) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UEnemyHealthbar_DamagedSegment_C:Tick(MyGeometry, InDeltaTime) end
