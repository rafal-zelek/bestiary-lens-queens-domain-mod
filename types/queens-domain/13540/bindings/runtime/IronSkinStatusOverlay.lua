---@meta

---@class AIronSkinStatusOverlay_C : AStatusScreenOverlay_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_5_Scale_D32B563A4223CF7A6DD8719CB6420A66 float
---@field Timeline_5_Pulse_D32B563A4223CF7A6DD8719CB6420A66 float
---@field Timeline_5_NewTrack_0_D32B563A4223CF7A6DD8719CB6420A66 float
---@field Timeline_5__Direction_D32B563A4223CF7A6DD8719CB6420A66 ETimelineDirection::Type
---@field Timeline_5 UTimelineComponent
---@field Timeline_4_NewTrack_2_93320CF54EF9176469EA6B939BA0A7CC float
---@field Timeline_4_Pulse_93320CF54EF9176469EA6B939BA0A7CC float
---@field Timeline_4_NewTrack_0_93320CF54EF9176469EA6B939BA0A7CC float
---@field Timeline_4__Direction_93320CF54EF9176469EA6B939BA0A7CC ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field Timeline_3_NewTrack_0_C4BF129C405FC636C59F8C9229C6FDB7 float
---@field Timeline_3__Direction_C4BF129C405FC636C59F8C9229C6FDB7 ETimelineDirection::Type
---@field Timeline_3 UTimelineComponent
local AIronSkinStatusOverlay_C = {}

function AIronSkinStatusOverlay_C:Apply() end

---@param EntryPoint int32
function AIronSkinStatusOverlay_C:ExecuteUbergraph_IronSkinStatusOverlay(EntryPoint) end

function AIronSkinStatusOverlay_C:Remove() end

function AIronSkinStatusOverlay_C:TickEffect() end

function AIronSkinStatusOverlay_C:Timeline_3__FinishedFunc() end

function AIronSkinStatusOverlay_C:Timeline_3__UpdateFunc() end

function AIronSkinStatusOverlay_C:Timeline_4__FinishedFunc() end

function AIronSkinStatusOverlay_C:Timeline_4__UpdateFunc() end

function AIronSkinStatusOverlay_C:Timeline_5__FinishedFunc() end

function AIronSkinStatusOverlay_C:Timeline_5__UpdateFunc() end
