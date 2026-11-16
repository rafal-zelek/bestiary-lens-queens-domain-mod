---@meta

---@class AGiantFish_Spawner_BP_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EmergeSpots TArray<AGiantSwampFish_EmergeSpot_C>
---@field ObjectInMouth AActor
local AGiantFish_Spawner_BP_C = {}

---@param Spot AGiantSwampFish_EmergeSpot_C
function AGiantFish_Spawner_BP_C:CustomEvent_0(Spot) end

---@param EntryPoint int32
function AGiantFish_Spawner_BP_C:ExecuteUbergraph_GiantFish_Spawner_BP(EntryPoint) end

function AGiantFish_Spawner_BP_C:ReceiveBeginPlay() end
