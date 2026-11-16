---@meta

---@class AFishwife_NPC_BP_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SaveHelper USaveHelper_C
---@field Eggs TArray<AEggDisplay_BP_C>
---@field QuestState AActorQuestStateManager_C
local AFishwife_NPC_BP_C = {}

---@param Dialogue FText
---@param ProcessedText FText
function AFishwife_NPC_BP_C:ApplyFormatKeysToDialogue(Dialogue, ProcessedText) end

function AFishwife_NPC_BP_C:BndEvt__Fishwife_NPC_BP_SaveHelper_K2Node_ComponentBoundEvent_0_SaveDataLoaded__DelegateSignature() end

function AFishwife_NPC_BP_C:BndEvt__Fishwife_NPC_BP_SaveHelper_K2Node_ComponentBoundEvent_1_WorldWasReset__DelegateSignature() end

---@param EntryPoint int32
function AFishwife_NPC_BP_C:ExecuteUbergraph_Fishwife_NPC_BP(EntryPoint) end

function AFishwife_NPC_BP_C:ReceiveBeginPlay() end

function AFishwife_NPC_BP_C:RefreshEggVisImmediately() end

AFishwife_NPC_BP_C['Refresh Egg vis'] = function(self) end
