---@meta

---@class UFaceFollowComp_C : USceneComponent
---@field UberGraphFrame FPointerToUberGraphFrame
local UFaceFollowComp_C = {}

---@param EntryPoint int32
function UFaceFollowComp_C:ExecuteUbergraph_FaceFollowComp(EntryPoint) end

---@param DeltaSeconds float
function UFaceFollowComp_C:ReceiveTick(DeltaSeconds) end

function UFaceFollowComp_C:Update() end
