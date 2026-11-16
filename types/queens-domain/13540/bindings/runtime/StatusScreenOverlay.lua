---@meta

---@class AStatusScreenOverlay_C : AStaticMeshActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_2_Scale_3C78C09D413E8823182BD2B19CC7FE49 float
---@field Timeline_2_Pulse_3C78C09D413E8823182BD2B19CC7FE49 float
---@field Timeline_2_NewTrack_0_3C78C09D413E8823182BD2B19CC7FE49 float
---@field Timeline_2__Direction_3C78C09D413E8823182BD2B19CC7FE49 ETimelineDirection::Type
---@field Timeline_2 UTimelineComponent
---@field Timeline_1_NewTrack_2_4716C03D46E66737F943AB972D308E36 float
---@field Timeline_1_Pulse_4716C03D46E66737F943AB972D308E36 float
---@field Timeline_1_NewTrack_0_4716C03D46E66737F943AB972D308E36 float
---@field Timeline_1__Direction_4716C03D46E66737F943AB972D308E36 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_NewTrack_0_DF9313C649BFDBCBE7E1F092387D51F6 float
---@field Timeline_0__Direction_DF9313C649BFDBCBE7E1F092387D51F6 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field CurrentOverlay UStatusEffectOverlay_C
---@field OverlayMat UMaterialInterface
---@field SortPri int32
local AStatusScreenOverlay_C = {}

function AStatusScreenOverlay_C:Apply() end

---@param EntryPoint int32
function AStatusScreenOverlay_C:ExecuteUbergraph_StatusScreenOverlay(EntryPoint) end

function AStatusScreenOverlay_C:ReceiveBeginPlay() end

function AStatusScreenOverlay_C:Remove() end

function AStatusScreenOverlay_C:TickEffect() end

function AStatusScreenOverlay_C:Timeline_0__FinishedFunc() end

function AStatusScreenOverlay_C:Timeline_0__UpdateFunc() end

function AStatusScreenOverlay_C:Timeline_1__FinishedFunc() end

function AStatusScreenOverlay_C:Timeline_1__UpdateFunc() end

function AStatusScreenOverlay_C:Timeline_2__FinishedFunc() end

function AStatusScreenOverlay_C:Timeline_2__UpdateFunc() end
