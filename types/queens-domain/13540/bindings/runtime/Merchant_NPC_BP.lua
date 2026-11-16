---@meta

---@class AMerchant_NPC_BP_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CounterDialogueDetect UBoxComponent
---@field ShopCamera UCameraComponent
---@field ['Shop Data'] UShopConfigData
---@field ['Player Ref'] AFS_PlayerChar_C
---@field InShop boolean
---@field DefaultDialogue UFS_DialogueData
---@field DemoShopData UShopConfigData
local AMerchant_NPC_BP_C = {}

---@param Dialogue FText
---@param ProcessedText FText
function AMerchant_NPC_BP_C:ApplyFormatKeysToDialogue(Dialogue, ProcessedText) end

function AMerchant_NPC_BP_C:ClosedShop() end

function AMerchant_NPC_BP_C:EndDialogue() end

---@param EntryPoint int32
function AMerchant_NPC_BP_C:ExecuteUbergraph_Merchant_NPC_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AMerchant_NPC_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AMerchant_NPC_BP_C:Interact(PlayerInteracting) end

function AMerchant_NPC_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AMerchant_NPC_BP_C:ReceiveTick(DeltaSeconds) end

---@param Sell boolean
AMerchant_NPC_BP_C['Open Shop'] = function(self, Sell) end
