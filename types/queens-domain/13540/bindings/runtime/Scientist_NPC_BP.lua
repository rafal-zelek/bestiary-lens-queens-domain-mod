---@meta

---@class AScientist_NPC_BP_C : ANPC_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ScienceTyping UAudioComponent
---@field FacePlayer boolean
---@field Animating boolean
---@field Mirrored boolean
---@field UsingMirroredAnim boolean
---@field FacinPlayer boolean
local AScientist_NPC_BP_C = {}

function AScientist_NPC_BP_C:EndDialogue() end

---@param EntryPoint int32
function AScientist_NPC_BP_C:ExecuteUbergraph_Scientist_NPC_BP(EntryPoint) end

---@param PlayerInteracting AActor
function AScientist_NPC_BP_C:Interact(PlayerInteracting) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnBlendOut_4348AA8D4D589580BB2E839AE8DFB09B(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnBlendOut_9A989FCF4D380A101EA1CB857DB27727(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnCompleted_4348AA8D4D589580BB2E839AE8DFB09B(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnCompleted_9A989FCF4D380A101EA1CB857DB27727(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnInterrupted_4348AA8D4D589580BB2E839AE8DFB09B(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnInterrupted_9A989FCF4D380A101EA1CB857DB27727(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnNotifyBegin_4348AA8D4D589580BB2E839AE8DFB09B(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnNotifyBegin_9A989FCF4D380A101EA1CB857DB27727(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnNotifyEnd_4348AA8D4D589580BB2E839AE8DFB09B(NotifyName) end

---@param NotifyName FName
function AScientist_NPC_BP_C:OnNotifyEnd_9A989FCF4D380A101EA1CB857DB27727(NotifyName) end

function AScientist_NPC_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AScientist_NPC_BP_C:ReceiveTick(DeltaSeconds) end
