---@meta

---@class AMagicPoisonStatusOverlay_C : AStatusScreenOverlay_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TickTimeline_Scale_E03B269B4B504B0364A3B096F3C1D51E float
---@field TickTimeline_Pulse_E03B269B4B504B0364A3B096F3C1D51E float
---@field TickTimeline_NewTrack_0_E03B269B4B504B0364A3B096F3C1D51E float
---@field TickTimeline__Direction_E03B269B4B504B0364A3B096F3C1D51E ETimelineDirection::Type
---@field TickTimeline UTimelineComponent
---@field Timeline_4_NewTrack_2_734797BE422C96F12150FDA012EC48BC float
---@field Timeline_4_Pulse_734797BE422C96F12150FDA012EC48BC float
---@field Timeline_4_NewTrack_0_734797BE422C96F12150FDA012EC48BC float
---@field Timeline_4__Direction_734797BE422C96F12150FDA012EC48BC ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field Timeline_3_NewTrack_1_EE6B88B04ED015B309C2F0B6EF3CFEB1 float
---@field Timeline_3_NewTrack_0_EE6B88B04ED015B309C2F0B6EF3CFEB1 float
---@field Timeline_3__Direction_EE6B88B04ED015B309C2F0B6EF3CFEB1 ETimelineDirection::Type
---@field Timeline_3 UTimelineComponent
---@field InitialDelay float
local AMagicPoisonStatusOverlay_C = {}

function AMagicPoisonStatusOverlay_C:Apply() end

---@param EntryPoint int32
function AMagicPoisonStatusOverlay_C:ExecuteUbergraph_MagicPoisonStatusOverlay(EntryPoint) end

function AMagicPoisonStatusOverlay_C:ReceiveBeginPlay() end

function AMagicPoisonStatusOverlay_C:Remove() end

function AMagicPoisonStatusOverlay_C:TickEffect() end

function AMagicPoisonStatusOverlay_C:TickTimeline__FinishedFunc() end

function AMagicPoisonStatusOverlay_C:TickTimeline__UpdateFunc() end

function AMagicPoisonStatusOverlay_C:Timeline_3__FinishedFunc() end

function AMagicPoisonStatusOverlay_C:Timeline_3__UpdateFunc() end

function AMagicPoisonStatusOverlay_C:Timeline_4__FinishedFunc() end

function AMagicPoisonStatusOverlay_C:Timeline_4__UpdateFunc() end
