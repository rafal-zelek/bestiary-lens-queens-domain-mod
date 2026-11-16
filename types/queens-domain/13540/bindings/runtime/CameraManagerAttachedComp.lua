---@meta

---@class UCameraManagerAttachedComp_C : USceneComponent
---@field UberGraphFrame FPointerToUberGraphFrame
local UCameraManagerAttachedComp_C = {}

---@param EntryPoint int32
function UCameraManagerAttachedComp_C:ExecuteUbergraph_CameraManagerAttachedComp(EntryPoint) end

---@param DeltaSeconds float
function UCameraManagerAttachedComp_C:ReceiveTick(DeltaSeconds) end
