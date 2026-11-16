---@meta

---@class ANPC_MultiReward_Base_C : ANPC_Base_C
---@field SpawnLoc USceneComponent
---@field RewardCountNamedData FName
---@field RewardList TArray<FQuestRewardEntry>
---@field ['Reward Actor'] AItemPickup_Base_C
local ANPC_MultiReward_Base_C = {}

function ANPC_MultiReward_Base_C:PickupCurrentReward() end

---@param Index int32
function ANPC_MultiReward_Base_C:SetUpReward(Index) end
