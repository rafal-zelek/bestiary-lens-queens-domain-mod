---@meta

---@class AMagicPoisonTick_StatusOverlay_C : AStatusScreenOverlay_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_4_NewTrack_0_7AE120554EC1947D02B9F0978F635D6F float
---@field Timeline_4__Direction_7AE120554EC1947D02B9F0978F635D6F ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field InitialDelay float
local AMagicPoisonTick_StatusOverlay_C = {}

function AMagicPoisonTick_StatusOverlay_C:Apply() end

---@param EntryPoint int32
function AMagicPoisonTick_StatusOverlay_C:ExecuteUbergraph_MagicPoisonTick_StatusOverlay(EntryPoint) end

function AMagicPoisonTick_StatusOverlay_C:ReceiveBeginPlay() end

function AMagicPoisonTick_StatusOverlay_C:Remove() end

function AMagicPoisonTick_StatusOverlay_C:TickEffect() end

function AMagicPoisonTick_StatusOverlay_C:Timeline_4__FinishedFunc() end

function AMagicPoisonTick_StatusOverlay_C:Timeline_4__UpdateFunc() end
