---@meta

---@class AFB_SequenceCamera_C : ACameraActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SceneCaptureComponent2D USceneCaptureComponent2D
---@field RenderToRT boolean
---@field FOV float
local AFB_SequenceCamera_C = {}

---@param EntryPoint int32
function AFB_SequenceCamera_C:ExecuteUbergraph_FB_SequenceCamera(EntryPoint) end

function AFB_SequenceCamera_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFB_SequenceCamera_C:ReceiveTick(DeltaSeconds) end

function AFB_SequenceCamera_C:Update() end

function AFB_SequenceCamera_C:UserConstructionScript() end
