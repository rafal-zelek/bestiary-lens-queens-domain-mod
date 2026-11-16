---@meta

---@class AChef_NPC_BP_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Cleaver2 UStaticMeshComponent
---@field Cleaver1 UStaticMeshComponent
---@field Whisk1 UStaticMeshComponent
---@field Spatula1 UStaticMeshComponent
---@field Ladle1 UStaticMeshComponent
---@field Crow AChefCrow_NPC_C
---@field FacinPlayer boolean
---@field Animating boolean
---@field FacePlayer boolean
local AChef_NPC_BP_C = {}

---@param Dialogue FText
---@param ProcessedText FText
function AChef_NPC_BP_C:ApplyFormatKeysToDialogue(Dialogue, ProcessedText) end

function AChef_NPC_BP_C:EndDialogue() end

---@param EntryPoint int32
function AChef_NPC_BP_C:ExecuteUbergraph_Chef_NPC_BP(EntryPoint) end

---@param PlayerInteracting AActor
function AChef_NPC_BP_C:Interact(PlayerInteracting) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnBlendOut_42046BFC4B38B13DD3C86DA565DE7FEE(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnBlendOut_E46677DB45199AD04A9EFF8DB3F6FE10(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnCompleted_42046BFC4B38B13DD3C86DA565DE7FEE(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnCompleted_E46677DB45199AD04A9EFF8DB3F6FE10(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnInterrupted_42046BFC4B38B13DD3C86DA565DE7FEE(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnInterrupted_E46677DB45199AD04A9EFF8DB3F6FE10(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnNotifyBegin_42046BFC4B38B13DD3C86DA565DE7FEE(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnNotifyBegin_E46677DB45199AD04A9EFF8DB3F6FE10(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnNotifyEnd_42046BFC4B38B13DD3C86DA565DE7FEE(NotifyName) end

---@param NotifyName FName
function AChef_NPC_BP_C:OnNotifyEnd_E46677DB45199AD04A9EFF8DB3F6FE10(NotifyName) end

function AChef_NPC_BP_C:ReadyForCrowHandoff() end

function AChef_NPC_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AChef_NPC_BP_C:ReceiveTick(DeltaSeconds) end
