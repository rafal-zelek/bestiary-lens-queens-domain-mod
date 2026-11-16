---@meta

---@class UDaggerDummy_C : UDaggerChargeLogic_C
---@field UberGraphFrame FPointerToUberGraphFrame
local UDaggerDummy_C = {}

---@param EntryPoint int32
function UDaggerDummy_C:ExecuteUbergraph_DaggerDummy(EntryPoint) end

function UDaggerDummy_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UDaggerDummy_C:ReceiveTick(DeltaSeconds) end
