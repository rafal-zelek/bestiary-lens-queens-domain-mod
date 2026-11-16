---@meta

---@class UMerchant-OpenSellScreen_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local UMerchant_OpenSellScreen_C = {}

---@param OutOfStuffToSell boolean
function UMerchant_OpenSellScreen_C:CustomEvent_0(OutOfStuffToSell) end

---@param Context AActor
function UMerchant_OpenSellScreen_C:RunActionWithinContext(Context) end

---@param EntryPoint int32
UMerchant_OpenSellScreen_C['ExecuteUbergraph_Merchant-OpenSellScreen'] = function(self, EntryPoint) end
