---@meta

---@class ARaider_NPC_BP_C : ANPC_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LapSword UStaticMeshComponent
---@field WorldEventReceiver UWorldEventReceiver_C
---@field Necklace UStaticMeshComponent
---@field KeyInst ARaidersKey_BP_C
---@field NecklacePickup ARaidersFineNecklace_Pickup_C
local ARaider_NPC_BP_C = {}

---@param Dialogue FText
---@param ProcessedText FText
function ARaider_NPC_BP_C:ApplyFormatKeysToDialogue(Dialogue, ProcessedText) end

function ARaider_NPC_BP_C:BndEvt__Raider_NPC_BP_WorldEventReceiver_K2Node_ComponentBoundEvent_1_OnInventoryChanged__DelegateSignature() end

---@param EntryPoint int32
function ARaider_NPC_BP_C:ExecuteUbergraph_Raider_NPC_BP(EntryPoint) end

function ARaider_NPC_BP_C:PickupKey() end

function ARaider_NPC_BP_C:PickupNecklace() end

function ARaider_NPC_BP_C:SetUpKey() end
