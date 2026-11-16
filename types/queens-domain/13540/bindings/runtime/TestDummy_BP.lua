---@meta

---@class ATestDummy_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
local ATestDummy_BP_C = {}

function ATestDummy_BP_C:CheckChase() end

---@param EntryPoint int32
function ATestDummy_BP_C:ExecuteUbergraph_TestDummy_BP(EntryPoint) end

function ATestDummy_BP_C:ReceiveBeginPlay() end

function ATestDummy_BP_C:StartWandering() end

function ATestDummy_BP_C:TickBehaviour() end
