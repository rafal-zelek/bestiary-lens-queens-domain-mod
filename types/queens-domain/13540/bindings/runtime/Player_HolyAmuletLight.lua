---@meta

---@class UPlayer_HolyAmuletLight_C : UPlayer_EquipmentLight_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StartingColor FLinearColor
local UPlayer_HolyAmuletLight_C = {}

---@param EntryPoint int32
function UPlayer_HolyAmuletLight_C:ExecuteUbergraph_Player_HolyAmuletLight(EntryPoint) end

function UPlayer_HolyAmuletLight_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UPlayer_HolyAmuletLight_C:ReceiveTick(DeltaSeconds) end
