---@meta

---@class UMerchant-OpenShopScreen_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
local UMerchant_OpenShopScreen_C = {}

---@param OutOfStuffToSell boolean
function UMerchant_OpenShopScreen_C:CustomEvent_0(OutOfStuffToSell) end

---@param Context AActor
function UMerchant_OpenShopScreen_C:RunActionWithinContext(Context) end

---@param EntryPoint int32
UMerchant_OpenShopScreen_C['ExecuteUbergraph_Merchant-OpenShopScreen'] = function(self, EntryPoint) end
