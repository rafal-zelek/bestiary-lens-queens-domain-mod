---@meta

---@class ACoin_Shimmer_BP_C : ACoin_Item_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NSD_ActorHider UNSD_ActorHider_C
---@field ['NSD to Track'] FName
local ACoin_Shimmer_BP_C = {}

function ACoin_Shimmer_BP_C:AutoAssociate() end

---@param EntryPoint int32
function ACoin_Shimmer_BP_C:ExecuteUbergraph_Coin_Shimmer_BP(EntryPoint) end

function ACoin_Shimmer_BP_C:FindAndSetCurseFountain() end

function ACoin_Shimmer_BP_C:ReceiveBeginPlay() end
