---@meta

---@class ARitualCutsceneManager_C : ACutsceneManagerBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FZCords TArray<AFZ_Cord_BP_C>
---@field CordBreakProgress float
---@field IndividualCordSnapSpeed float
---@field Texts TArray<FText>
---@field RitualTextWidget URitualText_C
local ARitualCutsceneManager_C = {}

function ARitualCutsceneManager_C:AdvanceCords() end

function ARitualCutsceneManager_C:CutsceneEnded() end

function ARitualCutsceneManager_C:DoCordAdvance() end

---@param EntryPoint int32
function ARitualCutsceneManager_C:ExecuteUbergraph_RitualCutsceneManager(EntryPoint) end

function ARitualCutsceneManager_C:Internal_StartCutscene() end

function ARitualCutsceneManager_C:Paused() end

function ARitualCutsceneManager_C:Resumed() end

function ARitualCutsceneManager_C:ShowEatText() end

---@param TextIndex int32
function ARitualCutsceneManager_C:ShowText(TextIndex) end

function ARitualCutsceneManager_C:UpdateCordBreaks() end

function ARitualCutsceneManager_C:UserConstructionScript() end
