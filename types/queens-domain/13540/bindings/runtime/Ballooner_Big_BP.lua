---@meta

---@class ABallooner_Big_BP_C : ABallooner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BigSpawner ABallooner_Big_Spawner_C
---@field ROomMoveTimer float
---@field RoomTarget boolean
---@field TargetPosition FVector
local ABallooner_Big_BP_C = {}

---@param EntryPoint int32
function ABallooner_Big_BP_C:ExecuteUbergraph_Ballooner_Big_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABallooner_Big_BP_C:Kill(NoRewards, SupressDeathSound) end

function ABallooner_Big_BP_C:MoveTowardsPlayer() end

function ABallooner_Big_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ABallooner_Big_BP_C:ReceiveTick(DeltaSeconds) end

ABallooner_Big_BP_C['Should Move Towards Player'] = function(self) end
