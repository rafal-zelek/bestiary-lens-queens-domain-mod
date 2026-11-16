---@meta

---@class AMagicFireStatusOverlay_C : AStatusScreenOverlay_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TickTimeline_Scale_3C408152467DD9E68F9845AA10A96263 float
---@field TickTimeline_Pulse_3C408152467DD9E68F9845AA10A96263 float
---@field TickTimeline_NewTrack_0_3C408152467DD9E68F9845AA10A96263 float
---@field TickTimeline__Direction_3C408152467DD9E68F9845AA10A96263 ETimelineDirection::Type
---@field TickTimeline UTimelineComponent
---@field Timeline_4_NewTrack_2_292899744DF0697229526B9BBBB5E58A float
---@field Timeline_4_Pulse_292899744DF0697229526B9BBBB5E58A float
---@field Timeline_4_NewTrack_0_292899744DF0697229526B9BBBB5E58A float
---@field Timeline_4__Direction_292899744DF0697229526B9BBBB5E58A ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field Timeline_3_NewTrack_1_6716A0914BC7EA177119FF9CA7056954 float
---@field Timeline_3_NewTrack_0_6716A0914BC7EA177119FF9CA7056954 float
---@field Timeline_3__Direction_6716A0914BC7EA177119FF9CA7056954 ETimelineDirection::Type
---@field Timeline_3 UTimelineComponent
local AMagicFireStatusOverlay_C = {}

function AMagicFireStatusOverlay_C:Apply() end

---@param EntryPoint int32
function AMagicFireStatusOverlay_C:ExecuteUbergraph_MagicFireStatusOverlay(EntryPoint) end

function AMagicFireStatusOverlay_C:ReceiveBeginPlay() end

function AMagicFireStatusOverlay_C:Remove() end

function AMagicFireStatusOverlay_C:TickEffect() end

function AMagicFireStatusOverlay_C:TickTimeline__FinishedFunc() end

function AMagicFireStatusOverlay_C:TickTimeline__UpdateFunc() end

function AMagicFireStatusOverlay_C:Timeline_3__FinishedFunc() end

function AMagicFireStatusOverlay_C:Timeline_3__UpdateFunc() end

function AMagicFireStatusOverlay_C:Timeline_4__FinishedFunc() end

function AMagicFireStatusOverlay_C:Timeline_4__UpdateFunc() end
