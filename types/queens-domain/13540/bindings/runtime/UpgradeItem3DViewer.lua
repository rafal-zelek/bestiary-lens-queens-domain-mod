---@meta

---@class AUpgradeItem3DViewer_C : AInspect_RWM_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field UpgradeAnim_ScanWave_89A9838144AE743815BD95BA7DB9B8ED float
---@field UpgradeAnim_Flash_89A9838144AE743815BD95BA7DB9B8ED float
---@field UpgradeAnim_Grid_89A9838144AE743815BD95BA7DB9B8ED float
---@field UpgradeAnim_Opacity_89A9838144AE743815BD95BA7DB9B8ED float
---@field UpgradeAnim__Direction_89A9838144AE743815BD95BA7DB9B8ED ETimelineDirection::Type
---@field UpgradeAnim UTimelineComponent
---@field AnimatedPrims TArray<UMeshComponent>
---@field AnimationActor AActor
---@field CanUpgrade boolean
local AUpgradeItem3DViewer_C = {}

function AUpgradeItem3DViewer_C:DoUpgradeAnimation() end

---@param EntryPoint int32
function AUpgradeItem3DViewer_C:ExecuteUbergraph_UpgradeItem3DViewer(EntryPoint) end

---@param DeltaSeconds float
function AUpgradeItem3DViewer_C:ReceiveTick(DeltaSeconds) end

---@param Item UFS_ItemData_C
function AUpgradeItem3DViewer_C:SetActorFromItem(Item) end

function AUpgradeItem3DViewer_C:UpgradeAnim__FinishedFunc() end

function AUpgradeItem3DViewer_C:UpgradeAnim__UpdateFunc() end
