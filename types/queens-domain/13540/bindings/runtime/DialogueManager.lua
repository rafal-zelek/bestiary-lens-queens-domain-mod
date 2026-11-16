---@meta

---@class UDialogueManager_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentDialogueNPC ANPC_Base_C
---@field CurrentDialogue UFS_DialogueData
---@field CurrentAvailableOptions TArray<FS_DialogueOption>
---@field ['Dialogue Widget'] UDialogueScreen_C
---@field CurrentDialogueSequence FFS_DialogueSequence
---@field CurrentDialogueSequenceIndex int32
---@field DisplayingError boolean
---@field RunningDialogue boolean
---@field ForceUIInputModeStatus boolean
local UDialogueManager_C = {}

function UDialogueManager_C:ActionFinished() end

---@param Changes TMap<FName, FFS_NamedSaveDataChange>
function UDialogueManager_C:ChangedNamedSaveDatas(Changes) end

---@param DialogueToJumpTo UFS_DialogueData
---@param bSkipGreeting boolean
function UDialogueManager_C:CustomEvent(DialogueToJumpTo, bSkipGreeting) end

---@param Index int32
---@param Leave boolean
function UDialogueManager_C:DialogueOptionSelected(Index, Leave) end

function UDialogueManager_C:DialogueSequenceContinuePressed() end

---@param DialogueSequence FFS_DialogueSequence
function UDialogueManager_C:DialogueSequenceEnded(DialogueSequence) end

function UDialogueManager_C:End() end

---@param EntryPoint int32
function UDialogueManager_C:ExecuteUbergraph_DialogueManager(EntryPoint) end

---@param Options TArray<FS_DialogueOption>
---@param FilteredOptions TArray<FS_DialogueOption>
function UDialogueManager_C:FilterAvailableOptions(Options, FilteredOptions) end

function UDialogueManager_C:HideDialogueWidget() end

---@param DialogueToJumpTo UFS_DialogueData
---@param bSkipGreeting boolean
function UDialogueManager_C:JumpToDialogue(DialogueToJumpTo, bSkipGreeting) end

function UDialogueManager_C:ReturnToOptions() end

function UDialogueManager_C:SequenceFinalActionEnded() end

function UDialogueManager_C:ShowDialogueWidget() end

---@param NPC ANPC_Base_C
---@param Dialogue UFS_DialogueData
---@param DialogueWidget UDialogueScreen_C
---@param Skip_Greeting boolean
function UDialogueManager_C:StartDialogue(NPC, Dialogue, DialogueWidget, Skip_Greeting) end

UDialogueManager_C['Bind Continue Event'] = function(self) end

UDialogueManager_C['Display Options Error'] = function(self) end

UDialogueManager_C['Report Greeting Error'] = function(self) end

UDialogueManager_C['Reset Event Bindings'] = function(self) end
