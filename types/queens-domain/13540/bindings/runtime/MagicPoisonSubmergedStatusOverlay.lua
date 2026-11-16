---@meta

---@class AMagicPoisonSubmergedStatusOverlay_C : AStatusScreenOverlay_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Audio UAudioComponent
---@field Timeline_4_NewTrack_0_2CD11FC64417F006E517A5AC102D2B69 float
---@field Timeline_4__Direction_2CD11FC64417F006E517A5AC102D2B69 ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field InitialDelay float
local AMagicPoisonSubmergedStatusOverlay_C = {}

function AMagicPoisonSubmergedStatusOverlay_C:Apply() end

---@param EntryPoint int32
function AMagicPoisonSubmergedStatusOverlay_C:ExecuteUbergraph_MagicPoisonSubmergedStatusOverlay(EntryPoint) end

function AMagicPoisonSubmergedStatusOverlay_C:ReceiveBeginPlay() end

function AMagicPoisonSubmergedStatusOverlay_C:Remove() end

function AMagicPoisonSubmergedStatusOverlay_C:TickEffect() end

function AMagicPoisonSubmergedStatusOverlay_C:Timeline_4__FinishedFunc() end

function AMagicPoisonSubmergedStatusOverlay_C:Timeline_4__UpdateFunc() end
