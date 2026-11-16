---@meta

---@class ABindingStatusOverlay_C : AStatusScreenOverlay_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TickTimeline_Scale_AACA40E842B35D71B5A105A6E90E1B0A float
---@field TickTimeline_Pulse_AACA40E842B35D71B5A105A6E90E1B0A float
---@field TickTimeline_NewTrack_0_AACA40E842B35D71B5A105A6E90E1B0A float
---@field TickTimeline__Direction_AACA40E842B35D71B5A105A6E90E1B0A ETimelineDirection::Type
---@field TickTimeline UTimelineComponent
---@field Timeline_4_NewTrack_2_8040F3B74588AF1FCA61B99CCA4366FE float
---@field Timeline_4_Pulse_8040F3B74588AF1FCA61B99CCA4366FE float
---@field Timeline_4_NewTrack_0_8040F3B74588AF1FCA61B99CCA4366FE float
---@field Timeline_4__Direction_8040F3B74588AF1FCA61B99CCA4366FE ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field Timeline_3_NewTrack_1_7F7D56574AD7AB8EC938B89FF7D13E0F float
---@field Timeline_3_NewTrack_0_7F7D56574AD7AB8EC938B89FF7D13E0F float
---@field Timeline_3__Direction_7F7D56574AD7AB8EC938B89FF7D13E0F ETimelineDirection::Type
---@field Timeline_3 UTimelineComponent
local ABindingStatusOverlay_C = {}

function ABindingStatusOverlay_C:Apply() end

---@param EntryPoint int32
function ABindingStatusOverlay_C:ExecuteUbergraph_BindingStatusOverlay(EntryPoint) end

function ABindingStatusOverlay_C:ReceiveBeginPlay() end

function ABindingStatusOverlay_C:Remove() end

function ABindingStatusOverlay_C:TickEffect() end

function ABindingStatusOverlay_C:TickTimeline__FinishedFunc() end

function ABindingStatusOverlay_C:TickTimeline__UpdateFunc() end

function ABindingStatusOverlay_C:Timeline_3__FinishedFunc() end

function ABindingStatusOverlay_C:Timeline_3__UpdateFunc() end

function ABindingStatusOverlay_C:Timeline_4__FinishedFunc() end

function ABindingStatusOverlay_C:Timeline_4__UpdateFunc() end
